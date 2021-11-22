trigger updateContactPhoneFaxWithParentAccount on Account (after update) {
    if(trigger.isAfter && trigger.isUpdate){
        for(Account acc:trigger.old){
            for(Contact con:[SELECT accountid,phone,fax from Contact where accountid =:acc.id]){
                con.phone=acc.phone;
                con.fax=acc.fax;
            }
        }
    }
}