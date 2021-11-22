trigger contactDescriptionUpdate on Contact (before insert,before update) {
    if(trigger.IsBefore && (trigger.IsUpdate || trigger.IsInsert)){
        /*for(Contact con:trigger.new){
        con.Description ='inserted and updated by'+UserInfo.getUserName();
        }*/
    }
}