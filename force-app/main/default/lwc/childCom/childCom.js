import { LightningElement, api } from 'lwc';
export default class ChildCom extends LightningElement {
    @api parentInputValue;
    handleChange(event){
        this.parentInputValue = event.target.value;
        console.log("childValue",this.parentInputValue);
    // Creates the event with the data.
    const custEvent = new CustomEvent("callpassvaluechildtoparent",{
        detail:this.parentInputValue
    });
    this.dispatchEvent(custEvent);
    }
}