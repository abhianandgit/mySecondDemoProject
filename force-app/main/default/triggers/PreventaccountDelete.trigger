trigger PreventaccountDelete on Account (before delete) {
    set<id> accIdSet =new set<id>();
    map<id,Account> accMap = new map<id,Account>();
    for(Account acc:trigger.old){
        accIdSet.add(acc.id);
    }
    system.debug('trigger.old'+trigger.old);
    system.debug('accIdSet'+accIdSet);
    system.debug('accMap'+accMap);

    
   List<Account> accList = [Select id,Name,(select id,name from Contacts)from Account 
                           where id IN:accIdSet];
    system.debug('accList'+accList);
    
    for(Account acc1:accList){
        accMap.put(acc1.id,acc1);
    }
    system.debug('accMap 2nd time'+accMap);
    for(Account acc:trigger.old){
        if(accMap.get(acc.id).Contacts.size()>=1){
            acc.addError('You can not delete account huuuuu');
        }
    }

}