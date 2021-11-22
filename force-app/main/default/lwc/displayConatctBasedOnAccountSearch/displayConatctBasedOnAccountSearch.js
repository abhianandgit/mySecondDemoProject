import { LightningElement,track,wire } from 'lwc';
import fetchContactByAccName from '@salesforce/apex/displayConatctBasedOnAccountSearch.fetchContactByAccName';

export default class DisplayConatctBasedOnAccountSearch extends LightningElement {
    @track accSearch;
    @track searchedAcc;
    @track ConRecords;
    handleOnChnge(event){
        this.accSearch = event.target.value;
    }
    handleOnSearchButton(event){
        this.searchedAcc = this.accSearch;
        console.log('searchedAcc'+this.searchedAcc);
    }
    

    @wire (fetchContactByAccName,{accName:'$searchedAcc'})
    
    wireRecords({data,error}){
        console.log('records'+data);
        if(data){
            this.ConRecords = data;
            this.error = undefined;
            console.log('ConRecords'+this.ConRecords);
        }
        
        else{
            this.error = error;
            this.data = undefined;
        }
    }
     
}