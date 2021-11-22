trigger LeadDuplicateCheck on Lead (before insert,before update) {
    set<string> emailSet = new set<string>();
    Map<string,Contact> conMap = new map<string,Contact>();
    if(trigger.isBefore && (trigger.isInsert || trigger.isUpdate)){
        for(Lead ld:trigger.new){
            emailSet.add(ld.email);
        }
      List<Contact> lstCon = [Select id, name,email from Contact where email IN:emailSet];
        for(Contact con:lstCon){
           conMap.put(con.email,con); 
        }
        for(lead ld:trigger.new){
            if(conMap.containsKey(ld.Email)){
                ld.addError('Heee HOOooo');  
            }
        }
    }
}