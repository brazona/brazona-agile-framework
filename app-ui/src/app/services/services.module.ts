import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from "@angular/platform-browser/animations";
import { HttpClientModule } from "@angular/common/http";
import { RouterModule } from "@angular/router";
import { HTTP_INTERCEPTORS } from '@angular/common/http';
import { Guard } from './guards/guard.service';
import { Interceptor } from './interceptor/interceptor.service';


@NgModule({
  imports: [
    CommonModule,
    BrowserModule,
    BrowserAnimationsModule,
    HttpClientModule,
    RouterModule
  ],
  declarations: [
  ],
  exports:[
  ],
  providers: [
    Guard,
    Interceptor,{
      provide: HTTP_INTERCEPTORS,
      useClass: Interceptor,
      multi: true,
    }
  ],
})
export class ServicesModule { }