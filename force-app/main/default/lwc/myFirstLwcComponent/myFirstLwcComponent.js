import { LightningElement } from 'lwc';
export default class MyFirstLwcComponent extends LightningElement {
Yourname='Sonu';
updateName(event){
    this.Yourname = event.target.value;
}
}