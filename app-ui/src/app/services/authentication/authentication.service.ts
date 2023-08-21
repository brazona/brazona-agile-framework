import { Router } from '@angular/router';
import { Injectable, EventEmitter } from '@angular/core';
import { Observable } from 'rxjs';

import { Usuario } from '../../models/usuario';

@Injectable({
  providedIn: 'root'
})
export class AuthenticationService {

  private usuarioAutenticado: boolean = false;

  mostrarMenuEmitter = new EventEmitter<boolean>();

  notificacoesLength$: Observable<number>;
   constructor(private router: Router) {
  }

  fazerLogin(usuario: Usuario){
      debugger
    if (usuario.nome === 'usuario@email.com' && 
      usuario.senha === '123456') {

      this.usuarioAutenticado = true;

      this.mostrarMenuEmitter.emit(true);

      this.router.navigate(['/home']);

    } else {
      this.usuarioAutenticado = false;

      this.mostrarMenuEmitter.emit(false);
    }
  }

  usuarioEstaAutenticado(){
    return this.usuarioAutenticado;
  }

}
