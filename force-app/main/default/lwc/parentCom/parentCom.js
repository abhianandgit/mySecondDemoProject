import { LightningElement,track } from 'lwc';
export default class ParentCom extends LightningElement {
@track passValuetoParent = 0;
passToParent(event){
    this.passValuetoParent = event.detail;
    console.log("valueParent",this.passValuetoParent);
}

}