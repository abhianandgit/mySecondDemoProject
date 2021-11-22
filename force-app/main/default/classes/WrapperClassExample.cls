public class WrapperClassExample {
 Public  Account objAcc;
 Public  list<Opportunity> oppList;
    Public  void example(){   
List<Account> accList = [Select name,(select name,stageName from Opportunities) from Account];
List<WrapperClassExample> wrapList=new List<WrapperClassExample>();
for(Account acc:accList){
    WrapperClassExample w=new WrapperClassExample();
    w.objAcc=acc;
    w.oppList=acc.Opportunities;
    wrapList.add(w); 
    }
        System.debug('account list'+accList);        
        system.debug('Accounts'+ objAcc);
        system.debug('Opp list'+ oppList);
        system.debug('wapperlist'+wrapList);
        
} 
}