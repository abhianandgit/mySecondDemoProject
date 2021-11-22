Public class AccountProcessor {
	@future
    public static void countContacts(list<id> lstId){
        List<Account> accToUpdate = new List<Account>();
   		List<Account> accList = [select id,name,Number_Of_Contacts__c,(select id from contacts)
                                 from Account where id IN:lstId];
        for(Account acc:accList){
            list<contact> lstcon = acc.contacts;
            acc.Number_Of_Contacts__c = lstcon.size();
            accToUpdate.add(acc);
        }
        update accToUpdate; 
    }
}