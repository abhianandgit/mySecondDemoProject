public class accountSearchPageController {
    public List<Account> lstacct {get;set;}
    public string accountCharSearch{get;set;} 
    public void accList(){
        if(accountCharSearch!='' && accountCharSearch!=null){
            accountCharSearch +='%';
            lstacct=new List<Account>();
            lstacct= [SELECT id,Name,Phone FROM Account WHERE Name like: accountCharSearch ];    
        }
    }



}