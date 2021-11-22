trigger CountRelatedContactRecordsOnAccount on Contact (after insert,after delete,after undelete) {
    set<id> accid= new set<id>();
    List<Account> listacc= new list<account>();
    if(trigger.isInsert){        
        for(Contact con:trigger.new){
          accid.add(con.accountid);  
        }
        List<Account> accList = [Select id,name,NoOfContactCounts__c,(select id from Contacts) 
                                 from Account where id in:accid];
        for(Account acc:accList){
            acc.NoOfContactCounts__c=acc.Contacts.size();
            listacc.add(acc);
        }
        update listacc;
    }
    if(trigger.isDelete){                
        for(Contact con:trigger.old){
           accid.add(con.AccountId); 
        }
        List<Account> acclist=[select id,name,NoOfContactCounts__c,(select id from Contacts)
                               from Account where id IN:accid];
        for(Account acc:acclist){
            acc.NoOfContactCounts__c = acc.Contacts.size();
            listacc.add(acc);
        }
        Update listacc;
    }
    if(trigger.isUndelete){
        system.debug('>>>>'+trigger.old);
        for(Contact con:trigger.old){
            
           accid.add(con.AccountId); 
        }
        List<Account> acclist=[select id,name,NoOfContactCounts__c,(select id from Contacts)
                               from Account where id IN:accid];
        for(Account acc:acclist){
            acc.NoOfContactCounts__c = acc.Contacts.size();
            listacc.add(acc);
        }
        Update listacc;
    }
    
}