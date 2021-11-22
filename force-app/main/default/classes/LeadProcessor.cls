Global class LeadProcessor implements Database.Batchable <sObject> {
    
    Global Database.QueryLocator start(Database.BatchableContext bc){
        string qry ='select id,Name,LeadSource from lead';
        return Database.getQueryLocator(qry);
    }    
        Global void execute(Database.BatchableContext bc, List<Lead> ldLst){
            List<Lead> leadToUpdate = new List<Lead>();
            for(lead ld:ldLst){
                ld.LeadSource ='Dreamforce';
                leadToUpdate.add(ld);
            }
            Update leadToUpdate; 
        }
        Global void finish(Database.BatchableContext bc){
            AsyncApexJob job =[Select id,status from AsyncApexjob where id=:bc.getJobId()];
        }
    
}