import { LightningElement, track } from 'lwc';
import RelevantContacts from '@salesforce/apex/FetchContactsForLWC.getContacts';
export default class FetchContactOnComponent extends LightningElement {
    @track NumberOfContacts;
    @track Contacts;

    contactHandlerChange(event){
        this.NumberOfContacts = event.target.value;
    }
    fetchContact(){
        RelevantContacts({numberOfContacts:this.NumberOfContacts})
            .then((result)=>{
                this.Contacts=result;
                this.error=undefined;
            })
            .catch((error)=>{
                this.error= error;
                this.Contacts=undefined;
            })
    }
}