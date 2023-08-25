import { Injectable } from '@angular/core';
import { Observable, Subject } from 'rxjs';
import { EventTypes } from '../../enums/event-types.model';
import { IToastEvent } from '../../models/toast-event.interface';

@Injectable({
  providedIn: 'root'
})
export class ToastService {
  toastEvents: Observable<IToastEvent>;
  private _toastEvents = new Subject<IToastEvent>();

  constructor() {
    this.toastEvents = this._toastEvents.asObservable();
  }

  /**
   * Show success toast notification.
   * @param title Toast title
   * @param message Toast message
   */
  showSuccessToast(title: string, message: string) {
    this._toastEvents.next({
      message,
      title,
      type: EventTypes.Success,
    });
  }

  /**
   * Show info toast notification.
   * @param title Toast title
   * @param message Toast message
   */
  showInfoToast(title: string, message: string) {
    this._toastEvents.next({
      message,
      title,
      type: EventTypes.Info,
    });
  }

  /**
   * Show warning toast notification.
   * @param title Toast title
   * @param message Toast message
   */
  showWarningToast(title: string, message: string) {
    this._toastEvents.next({
      message,
      title,
      type: EventTypes.Warning,
    });
  }

  /**
   * Show error toast notification.
   * @param title Toast title
   * @param message Toast message
   */
  showErrorToast(title: string, message: string) {
    this._toastEvents.next({
      message,
      title,
      type: EventTypes.Error,
    });
  }
}