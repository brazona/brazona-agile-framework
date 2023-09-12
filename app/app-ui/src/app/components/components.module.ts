import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from "@angular/platform-browser/animations";
import { HttpClientModule } from "@angular/common/http";
import { RouterModule } from "@angular/router";
import { ReactiveFormsModule } from '@angular/forms';

import { FooterComponent } from './footer/footer.component';
import { HeaderComponent } from './header/header.component';
import { HomeComponent } from './home/home.component'; 
import { LoginComponent } from './login/login.component';
import  {ToastComponent} from './toast/toast.component';
import { ToasterComponent } from './toaster/toaster.component';

import { AuthenticationService } from '../services/authentication/authentication.service';
import { ServicesModule } from '../services/services.module';
import { BaseComponent } from './base/base.component';

@NgModule({
  imports: [
    CommonModule,
    BrowserModule,
    BrowserAnimationsModule,
    HttpClientModule,
    RouterModule,
    FormsModule,
    ServicesModule,
    ReactiveFormsModule,
    

  ],
  declarations: [
    FooterComponent,
    HeaderComponent,
    HomeComponent,
    LoginComponent,
    ToastComponent,
    ToasterComponent,
    BaseComponent,

  ],
  exports:[
    // shared modules
    BrowserModule,
    BrowserAnimationsModule,
    HttpClientModule,

    // shared components
    FooterComponent,
    HeaderComponent,
    HomeComponent,
    LoginComponent,
    ToastComponent,
    ToasterComponent,
  ],
  providers: [AuthenticationService],
})
export class ComponentsModule { }