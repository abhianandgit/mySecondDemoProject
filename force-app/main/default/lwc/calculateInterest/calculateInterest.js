import { LightningElement } from 'lwc';

export default class CalculateInterest extends LightningElement {
    Amount;
    Term;
    Rate;
    InterestAccumulated;
    TotalAmount;

    takeAmount(event){
        this.Amount = event.target.value;
    }
    takeTerm(event){
        this.Term = event.target.value;
    }
    takeRate(event){
        this.Rate = event.target.value;
    }
    CalculateInterestAndAmount(event){
        console.log(this.Amount);
        const amt = parseInt(this.Amount);
        const trm = parseInt(this.Term);
        const rt = parseInt(this.Rate);

        InterestAccumulated = (Amount*Term*Rate)/100;
        TotalAmount = (amt + InterestAccumulated);
    }
    Clear(event){
        this.Amount = '';
        this.Term = '';
        this.Rate = '';
        this.InterestAccumulated = '';
        this.TotalAmount = '';
    }
}