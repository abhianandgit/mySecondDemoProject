trigger ActiveAccountNotDeleted on Account (before delete) {
    if(Trigger.isBefore && Trigger.isDelete){
        for(Account acc:Trigger.old){
            if(acc.Active__c=='yes'){
                acc.addError('Active account can not be deleted');
            }
        }
    }
}