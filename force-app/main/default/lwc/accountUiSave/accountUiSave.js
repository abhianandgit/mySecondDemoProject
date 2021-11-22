import { LightningElement,track } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
export default class AccountUiSave extends LightningElement {
    @track accountName;
    @track email;
    @track phoneNumber;
    @track industry;
    @track gender;
    setValueOnChange(event){
        if(event.target.name =='acc'){
            this.accountName=event.target.value; 
        }
        else if(event.target.name =='eml'){
            this.email=event.target.value; 
        }
        else if(event.target.name =='phn'){
            this.phoneNumber=event.target.value; 
        }
        else if(event.target.name =='ind'){
            this.industry=event.target.value; 
        }
        else if(event.target.name =='gnd'){
            this.gender=event.target.value; 
        }
    }
    saveAccount(){
        console.log('account is saved');
    }
}