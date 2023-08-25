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
  submitted = false;
  isValid:boolean;
  state:string;
  user:string
  pass:string
  isREadOnly:boolean = false
  constructor(
    private authService: AuthenticationService, 
    private formBuilder: FormBuilder, 
    private router: Router
    ) {
  }
  
  ngOnInit(): void {
    this.verifyAccess();
    this.state = EnumRequestTypesServ.ISREQUERID
    this.registerForm = this.formBuilder.group({
      user: ['', [Validators.required]],
      pass: ['', [Validators.required]],
    })
  }

  fazerLogin(){
    this.submitted = true;
    this.isValid = false
    this.onChangeStatus(EnumRequestTypesServ.ISWAITING);
    if (this.registerForm.valid) {
        this.usuario.nome = this.user;
        this.usuario.senha = this.pass;
        this.isValid = true
        this.authService.login(this.usuario).subscribe(
          res =>{
            console.log(res);
            if(res == true){
              this.onChangeStatus(EnumRequestTypesServ.ISREQUERID);
              this.user ='';
              this.pass ='';
            }
          });
    }
    
  }
  get registerFormControl() {
    return this.registerForm.controls;
  }
  
  onChangeField(){

    if(this.registerForm.valid){
      this.onChangeStatus(EnumRequestTypesServ.ISVALIDATED);
    }    
  }
  focusField(elementId: string){
    const input = document.getElementById(
      elementId,
    ) as HTMLInputElement | null;
      console.log(input);
      input?.focus
  }
  private onChangeStatus(newStatus:string){
    this.state = newStatus;
    this.updateButtom();
  }
  private updateButtom(){
    
    let buttom = document.getElementById("button-logar")
    let buttomLoad = document.getElementById("button-load")
    //let userField = document.getElementById("user")
    let passField = document.querySelector("#pass")
    let userField = document.querySelector("#user")
    if(this.registerForm.valid){
      buttom?.classList.remove('btn-disable');
    }
    if(this.state == "WAITING"){
      buttom?.classList.add('btn-hidden');
      buttomLoad?.classList.remove('btn-hidden');
      this.isREadOnly = true;
      userField?.setAttribute("disabled", "disabled");
      passField?.setAttribute("disabled", "disabled");
    }
    if(this.state == "REQUERID"){
      this.isREadOnly = false;
      buttom?.classList.add('btn-disable');
      buttom?.classList.remove('btn-hidden');
      buttomLoad?.classList.add('btn-hidden');
    }
  }
  private verifyAccess(){
    if (this.authService.isAthentication()) {
      this.router.navigate(['/home']);
    }
  }
}
