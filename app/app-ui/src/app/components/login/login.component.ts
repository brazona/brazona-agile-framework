import { Component, OnInit } from '@angular/core';
import { AuthenticationService } from '../../services/authentication/authentication.service';
import { Usuario } from '../../models/user';
import { FormGroup, FormBuilder } from '@angular/forms';
import { Validators } from '@angular/forms';
import { EnumRequestTypesServ } from 'src/app/enums/request-types-serv';
import { Router } from '@angular/router';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  usuario: Usuario = new Usuario();
  formLogin: FormGroup;
  registerForm: FormGroup;
  state:string;
  user:string
  pass:string

  private bt_login:any
  private bt_load:any
  private pass_field:any
  private user_field:any
  private field_span_user:any
  private field_span_pass:any

  
  constructor(
    private authService: AuthenticationService, 
    private formBuilder: FormBuilder, 
    private router: Router
    ) {
  }
  
  ngOnInit(): void {
    this.verifyAccess();
    this.onChangeStatus(EnumRequestTypesServ.ISREQUERID);

    this.bt_login = document.getElementById("button-logar")
    this.bt_load = document.getElementById("button-load")
    this.pass_field = document.querySelector("#pass")
    this.user_field = document.querySelector("#user")
    this.field_span_user = document.querySelector("#required-field-span-user")
    this.field_span_pass = document.querySelector("#required-field-span-pass")

    this.registerForm = this.formBuilder.group({
      user: ['', [Validators.required]],
      pass: ['', [Validators.required]],
    })
  }

  fazerLogin(){
    this.onChangeStatus(EnumRequestTypesServ.ISWAITING);
    if (this.registerForm.valid) {
        this.usuario.nome = this.user;
        this.usuario.senha = this.pass;
        this.authService.login(this.usuario).subscribe(
          res =>{
            if(res == true){
              this.onChangeStatus(EnumRequestTypesServ.ISREQUERID);
              this.user ='';
              this.pass ='';
            }
          }
        );
    }
  }
  onChangeField(){
    console.log(this.state);
    if(this.registerForm.valid){
      this.onChangeStatus(EnumRequestTypesServ.ISVALIDATED);
    }
  }
  private onChangeStatus(status:string){
    this.state = status;
    this.updateButtom();
  }
  private updateButtom(){
    switch (this.state) {
      case "WAITING":
        this.statusWaitting();
        break;
      case "VALIDATED":
        this.statusValid();
        break;
      default:
        this.statusRequerid();
        break;
    }
  }
  private verifyAccess(){
    if (this.authService.isAthentication()) {
      this.router.navigate(['/home']);
    }
  }
  private statusWaitting(){
    this.bt_login?.classList.add('btn-hidden');
    this.bt_load?.classList.remove('btn-hidden');
    this.user_field?.setAttribute("disabled", "disabled");
    this.pass_field?.setAttribute("disabled", "disabled");
    this.field_span_pass?.classList.add('btn-hidden');
    this.field_span_user?.classList.add('btn-hidden');
    
  }
  private statusRequerid(){
    this.bt_login?.classList.add('btn-disable');
    this.bt_login?.classList.remove('btn-hidden');
    this.bt_load?.classList.add('btn-hidden');
    this.user_field?.removeAttribute("disabled");
    this.pass_field?.removeAttribute("disabled");
    this.field_span_pass?.classList.remove('btn-hidden');
    this.field_span_user?.classList.remove('btn-hidden');
    
  }
  private statusValid(){
    this.bt_login?.classList.remove('btn-disable');
    this.field_span_pass?.classList.add('btn-hidden');
    this.field_span_user?.classList.add('btn-hidden');
  }
}
