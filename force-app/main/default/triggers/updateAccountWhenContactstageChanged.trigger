trigger updateAccountWhenContactstageChanged on Contact (after insert,after update) {
    if(trigger.isAfter && (trigger.isInsert || trigger.isUpdate)){
        set<id> accid = new set<id>();
        for(Contact con:trigger.new){
            accid.add(con.accountid);
        }
        
}
}