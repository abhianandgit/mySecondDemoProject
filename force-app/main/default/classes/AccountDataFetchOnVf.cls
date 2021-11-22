Public with sharing class AccountDataFetchOnVf{
    public  list<Account> records{get;set;}
    public  void accountDisplay(){
        records=[select Name,AccountNumber from Account];
    }
    //System.debug('>>>>>'+records); 
}