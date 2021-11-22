trigger preventAccountToDeleteForContactAssociated on Account (before delete) {
    
    if(Trigger.IsBefore && Trigger.IsDelete){    
        for(Account acc:Trigger.old){
            integer c=[select count() from contact where accountid =:acc.id];
            if(c>0){
            acc.addError('cant be deleted account');
            }
        }    
    }
}