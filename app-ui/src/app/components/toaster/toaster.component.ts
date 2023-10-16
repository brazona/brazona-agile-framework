import { ChangeDetectionStrategy, ChangeDetectorRef, Component, OnInit } from '@angular/core';
import { IToastEvent } from '../../models/toast-event.interface';
import { ToastService } from '../../services/toast/toast.service';

@Component({
  selector: 'app-toaster',
  templateUrl: './toaster.component.html',
  styleUrls: ['./toaster.component.css'],
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class ToasterComponent implements OnInit {
  currentToasts: IToastEvent[] = [];

  constructor(
    private toastService: ToastService,
    private cdr: ChangeDetectorRef
  ) {}

  ngOnInit() {
    this.subscribeToToasts();
  }

  subscribeToToasts() {
    this.toastService.toastEvents.subscribe((toasts) => {
      const currentToast: IToastEvent = {
        type: toasts.type,
        title: toasts.title,
        message: toasts.message,
      };
      this.currentToasts.push(currentToast);
      this.cdr.detectChanges();
    });
  }

  dispose(index: number) {
    this.currentToasts.splice(index, 1);
    this.cdr.detectChanges();
  }
}