import { Injectable } from '@angular/core';
import { EventTypes } from 'src/app/enums/event-types.model';
import { ToastService } from '../../services/toast/toast.service';
import { EnumToast } from 'src/app/enums/toast';
import { EnumToastTitle } from 'src/app/enums/toast-title';
import { environment } from '../../../environments/environment';
import { HttpErrorResponse, HttpResponse } from '@angular/common/http';
import { Router } from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class BaseService {
 
  protected env = environment;
  constructor(
    public toastService: ToastService,
    public router: Router
    ) { 

  }
  private type: EventTypes;
  private message: EnumToast;
  
  showToastSuccess(response:HttpResponse<any>) {
    this.builderSucessNotif(response);
    this.notify(this.type, this.message)
  }
  showToastError(response:HttpErrorResponse) {
    this.builderExceptionNotif(response);
    this.notify(this.type, this.message)
  }
  private notify(type: EventTypes, message: EnumToast) {
    switch (type) {
      case EventTypes.Success:
        this.toastService.showSuccessToast(EnumToastTitle.success, message);
        break;
      case EventTypes.Error:
        this.toastService.showErrorToast(EnumToastTitle.error, message);
        break;
      case EventTypes.Warning:
        this.toastService.showWarningToast(EnumToastTitle.warn, message);
        break;
      default:
        this.toastService.showInfoToast('Info toast title', 'This is an info toast message.');
        break;
    }
  }
  private builderExceptionNotif(error: HttpErrorResponse){
      
      switch ( error.status ) {
        case 400:
          this.type = EventTypes.Warning
          this.message = EnumToast.bad
          break;
        case 401:
          this.type = EventTypes.Warning
          this.message = EnumToast.accessDenied
          break;
        case 404:
          this.type = EventTypes.Warning
          this.message = EnumToast.notFound
          break;
        case 403:
          this.type = EventTypes.Warning
          this.message = EnumToast.forbidden
          this.router.navigate(['/login']);
          break;
        case 500:
          this.type = EventTypes.Error
          this.message = EnumToast.internal
          break;
        case 502:
          this.type = EventTypes.Error
          this.message = EnumToast.unavailable
          break;
        case 504:
          this.type = EventTypes.Error
          this.message = EnumToast.unavailable
          break;
        default: 
            this.type = EventTypes.Error
            this.message = EnumToast.internal
            break;
        }
  }
  private builderSucessNotif(response: HttpResponse<any>){

    switch ( response.status ) {
      case 200:
        this.type = EventTypes.Success
        this.message = EnumToast.authSuccess
        break;
    }
  };
}
  

