trigger makeFieldRequired on Lead (before insert,before update) {
    if(trigger.isBefore && (trigger.isInsert || trigger.isUpdate)){
        for(Lead ld:trigger.new){
            if(ld.Industry==null || ld.Industry==''){
            ld.Industry.addError('Industry is needed');
            }
            else if(ld.ProductInterest__c==null || ld.ProductInterest__c==''){
            ld.ProductInterest__c.addError('product interest is needed');
            }
        }
    
    }
}