trigger AccountAutoAssignAnnualRevenueBasedOnIndustry on Account (before insert,before update) {
    if(Trigger.isBefore && (Trigger.isInsert ||Trigger.isUpdate)){
        for(Account acc:Trigger.new){
            if(acc.Industry=='Banking'){
                acc.AnnualRevenue=10;                
            }
            Else if(acc.Industry=='Insurance'){
                acc.AnnualRevenue=9;
            }
        }    
    }        
}