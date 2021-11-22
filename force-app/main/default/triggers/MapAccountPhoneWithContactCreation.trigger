trigger MapAccountPhoneWithContactCreation on Contact (after insert) {
    List <Account> accList = new List <Account>();
    Set<Id> AccountId = New Set<id>();
    for(Contact con : Trigger.New){
        AccountId.add(con.AccountId);
    }
	Account acc =[Select id,Phone from Account where id IN :AccountId];
    for(Contact con : Trigger.New){
        acc.phone=con.phone;
        accList.add(acc);
    }
    Update accList;
}