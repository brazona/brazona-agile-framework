import { EventTypes } from '../enums/event-types.model';

export interface IToastEvent {
  type: EventTypes;
  title: string;
  message: string;
}