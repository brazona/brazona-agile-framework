import { EventTypes } from './event-types.model';

export interface ToastEvent {
  type: EventTypes;
  title: string;
  message: string;
}