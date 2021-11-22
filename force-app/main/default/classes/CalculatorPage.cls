public class CalculatorPage {
    public integer FirstNo {get;set;}
    public integer SecondNo {get;set;}
    public decimal Result {get;set;}
    
    Public void Addition(){
        Result= FirstNo + SecondNo;
    }
    Public void Subtraction(){
        Result= FirstNo - SecondNo;
    }
    Public void Multiply(){
        Result= FirstNo * SecondNo;
    }
    Public void Divide(){
        if(SecondNo > 0){
        Result= FirstNo / SecondNo;
        ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.Confirm,'Successfully'));
        }
        else{
        ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.Warning,'Not allowed'));
        }
    }
    Public void Modulus(){
        Result= math.Mod(FirstNo,SecondNo);
    }
}