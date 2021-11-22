import { LightningElement,track } from 'lwc';
import createStudent from '@salesforce/apex/LwcCustomRecordSave1.createStudent';
import {NavigationMixin} from 'lightning/navigation';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

export default class LwcCustomRecordSave extends NavigationMixin (LightningElement) {
    @track StuName;
    @track StuEmail;
    @track StuPhone;
    @track StuCity;
    @track StuRecordId;
    @track ErrorMsg;

    handleOnChange(event){
        if(event.target.name ==='StuName'){
            this.StuName = event.target.value;
        }
        if(event.target.name =='StuEmail'){
            this.StuEmail = event.target.value;
        }
        if(event.target.name =='StuPhone'){
            this.StuPhone = event.target.value;
        }
        if(event.target.name =='StuCity'){
            this.StuCity = event.target.value;
        }
    }
    createStudentLwc(){
        alert('inside');
        createStudent({name:this.StuName,email:this.StuEmail,phone:this.StuPhone,city:this.StuCity})
        .then(result=>{
            this.StuRecordId = result.Id;
            alert(this.StuRecordId);
             console.log('record id data' +this.StuRecordId);
            const toastEvent = new ShowToastEvent({
                title :'success',
                message :'Record Created Successfully',
                variant :'success'
            });
            this.dispatchEvent(toastEvent);
            this[NavigationMixin.Navigate]({
                type: 'standard__recordPage',
                attributes: {
                    recordId: this.StuRecordId,
                    objectApiName: 'Student__c',
                    actionName: 'view'
                },
            });
                
              /*Start Navigation*/
          /*this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: this.StuRecordId,
                objectApiName: 'Student__c',
                actionName: 'view'
            },
         });*/
         /*End Navigation*/
        }).catch(
            error =>{
                this.errorMsg=error.message;
                window.console.log(this.error);}
        );
    }
}