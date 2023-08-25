import { Component } from '@angular/core';
import { EventTypes } from 'src/app/models/event-types.model';
import { ToastService } from '../../services/toast/toast.service';
import { EnumToast } from 'src/app/enums/toast';
import { EnumToastTitle } from 'src/app/enums/toast-title';
@Component({
  selector: 'app-base',
  templateUrl: './base.component.html',
  styleUrls: ['./base.component.css']
})
export class BaseComponent {
  
  constructor(public toastService: ToastService) { }

  ngOnInit(): void {
  }

  showToast(type: EventTypes, message: EnumToast) {
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
}
