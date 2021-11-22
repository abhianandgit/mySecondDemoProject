trigger preventDuplicateLead on Lead (before insert,before update){
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isupdate)){
        for(Lead ld : Trigger.new){
            //integer recordCount = [SELECT Count() FROM Lead WHERE Email=:ld.Email];
            List<Lead> lstld=[SELECT Email FROM Lead WHERE Email=:ld.Email];
            //if(recordCount>0){
            if(lstld.size()>0){
                ld.Email.addError('>>>>>>>>This is duplicate lead on the basis of email id existence');
            }
        }
    }

}