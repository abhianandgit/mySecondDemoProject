import { LightningElement,track } from 'lwc';

export default class CalculateGreaterThanThreeNumbers extends LightningElement {
     Num1;
     Num2;
     Num3;

    handleChange(event){
        if(event.target.name === 'Number1'){
            this.Num1 = event.target.value;
        }
        if(event.target.name === 'Number2'){
            this.Num2 = event.target.value;
        }
        if(event.target.name === 'Number3'){
            this.Num3 = event.target.value;
        }
    }

   /* Number1(event){
        this.Num1 = event.target.value;
    }
    //console.log(this.Num1);
    Number2(event){
        this.Num2 = event.target.value;
    }
    //Console.log(this.Num2);
    Number3(event){
        this.Num3 = event.target.value;
    }*/
    
    Calculate(){
        console.log(this.Num3);
        const a = parseInt(this.Num1);
        const b = parseInt(this.Num2);
        const c = parseInt(this.Num3);
        console.log('test',c);
        console.log(parseInt(this.Num3));
        if(a>b && a>c){
            alert('the greater no is '+a);
        }
        else if (b>a && b>c){
            alert('the greater no is '+b);
        }
        else {
            alert('the greater no is '+c);
        }
    }
    Clear(){
        console.log('inside clear method');
        //this.template.querySelector('form').reset();
        this.Num1 = null;
        this.Num2 = null;
        this.Num3 = null;
    }
}