import { Router } from '@angular/router';
import { Injectable, EventEmitter } from '@angular/core';
import { Observable} from 'rxjs';

import { Usuario } from '../../models/user';
import { EventTypes } from '../../enums/event-types.model';
import { ToastService } from '../toast/toast.service';
import { BaseService } from '../base/base.service';

import { HttpClient, HttpHeaders, HttpParams} from '@angular/common/http';
import * as moment from "moment";
import { IToken} from '../../models/token.interface';
import {Token } from '../../models/token.model'
import { Oauth } from '../../models/oauth.model';
import { plainToClass } from 'class-transformer';


@Injectable({
  providedIn: 'root'
})
export class AuthenticationService extends BaseService{

  title = 'angular-bootstrap-toast-service';
  EventTypes = EventTypes;

  private authBase64: string;
  private body: Oauth = new Oauth();
  private isUserAuth: boolean = false;
  
  mostrarMenuEmitter = new EventEmitter<boolean>();
  statusServ: Observable<boolean>;
  notificacoesLength$: Observable<number>;
   constructor(private router: Router, toastService:ToastService, private http: HttpClient) {
    super(toastService)
  }

  login(user: Usuario): Observable <any>{
    return new Observable((observer) => {
      this.builderBody(user);
      this.builderHeader64();
      const bodyResquest = new HttpParams()
        .set('username', this.body.username)
        .set('password', this.body.password)
        .set('grant_type', this.body.grant_type);
      this.http.post<IToken>(
        this.env.APP_API.URL+'/authentication/oauth/token', 
        bodyResquest.toString(), 
        {
          headers: new HttpHeaders()
            .set('Content-Type', 'application/x-www-form-urlencoded')
            .set('Authorization', `Basic ${this.authBase64}`),
          observe: 'response'
        }
      )
      .subscribe(
        res =>{
          let body = plainToClass(Token, res.body);
          this.setSession(body);
          this.router.navigate(['/home']);
          observer.next(true);
          this.showToastSuccess(res); 
        },
        (err: string) =>{
          console.log(err);
          observer.next(true);
          this.showToastError(JSON.parse(err));  
        }
      );
      
    }

  )}
  private setSession(token: Token) {
    const expiresAt = moment().add(token.expires_in,'second');
    localStorage.setItem('token', token.access_token);
    localStorage.setItem("expires_at", JSON.stringify(expiresAt.valueOf()) );
  }
  logout() {
    localStorage.removeItem("token");
    localStorage.removeItem("expires_at");
  }
  public isLoggedIn() {
    return moment().isBefore(this.getExpiration());
  }

  public isLoggedOut() {
    return !this.isLoggedIn();
  }

 public getExpiration() {
    return moment(localStorage.getItem("expires_at"));
  }
  public isAthentication(){
    return this.verifyTokenStorage();
  }
  private verifyTokenStorage():boolean{
    if(localStorage['token'] != null) {
      this.isUserAuth =  true;
    }
    return this.isUserAuth;
  }
  private builderBody(user:Usuario){
    this.body.grant_type = this.env.APP_API.GRANT
    this.body.username = user.nome;
    this.body.password = user.senha;
  }
  private builderHeader64(){
    this.authBase64 = window.btoa(this.env.APP_API.AUTH_USER + ':' + this.env.APP_API.AUTH_PASS);
  }
 
  
}
