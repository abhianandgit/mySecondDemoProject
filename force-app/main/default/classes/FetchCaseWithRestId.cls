public class FetchCaseWithRestId {
    @AuraEnabled
    public static string getCaseRestIdBasesOnCaseId(id caseId){
      //List<case> objCase =new List<case>();
      string restid =''; 
        if(caseId!=null){
           restid = [SELECT Id,RestId__c FROM Case where id =:caseId].RestId__c;
        }
        system.debug('>>>>>restid'+restid);
        return restid;  
    }
    @AuraEnabled
    public static list<case> getCaseListBasedOnRestId(id CaseId){
        string restId = getCaseRestIdBasesOnCaseId(CaseId);
        system.debug('>>>>>restId 2nd'+restId);
        List<case> lstCs =new List<case>(); 
        if(RestId!=null && CaseId != null ){
           lstCs = [SELECT Id, Status, CaseNumber, Account.Name, 
                            Origin, Subject, Priority, CreatedDate, 
                            RestId__c FROM Case where RestId__c =:RestId AND Id !=: CaseId Order By CreatedDate DESC limit 3 ];
        }
        system.debug('>>>>>lstCs'+lstCs);
        return lstCs;        
    }
}