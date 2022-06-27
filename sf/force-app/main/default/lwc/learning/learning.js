import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {
  greeting = 'Personal information';
  greeting1 = 'Enter the value';
  changeHandler(event) {
    this.greeting = event.target.value;
  }
}