trigger ContactMustHaveAccount on Contact (before insert,before update) {
    if(trigger.isBefore && (trigger.isInsert ||Trigger.isUpdate)){
    For(Contact con: trigger.new){
     if(con.accountid==null || con.accountid==''){
         con.addError('Account must be associated with Account');
     }
    }
    }
}