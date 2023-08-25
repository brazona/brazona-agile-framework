import { Observable } from 'rxjs';
import { Injectable } from '@angular/core';
import { CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot, Router, CanLoad, Route } from '@angular/router';
import { AuthenticationService } from '../authentication/authentication.service';

@Injectable()
export class Guard implements CanActivate, CanLoad {

  isValid:boolean;

  constructor(
    private authService: AuthenticationService,
    private router: Router
  ) {

   }

  canActivate(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot
  ) : Observable<boolean> | boolean {


    return this.verificarAcesso();
  }

  private verificarAcesso(){
    this.isValid = true;
    if (!this.authService.isAthentication()) {
        this.isValid = false;
        this.router.navigate(['/login']);
    } 
    return this.isValid;
  }

  canLoad(route: Route): Observable<boolean>|Promise<boolean>|boolean {
    return this.verificarAcesso();
  }

}