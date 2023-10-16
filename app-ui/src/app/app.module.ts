import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { ServicesModule } from './services/services.module';
import { ComponentsModule } from './components/components.module';



@NgModule({
  declarations: [
    AppComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    ServicesModule,
    ComponentsModule,
    FormsModule,
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
