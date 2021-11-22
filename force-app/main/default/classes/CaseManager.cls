@RestResource(urlMapping = '/case/*')
global class CaseManager {
    @HttpGet
    global static Case getCaseById(){
    	RestRequest request = RestContext.request;
        string caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        Case result =  [SELECT CaseNumber,Subject,Status,Origin,Priority
                        FROM Case
                        WHERE Id = :caseId];
        return result;
    }
    @HttpPost
    global static id createCase(String subject,String status,String origin,String priority){
        case cs = new case();
        cs.Subject =subject;
        cs.Status =status;
        cs.Origin =origin;
        cs.Priority =priority;
        insert cs;
        return cs.id;
    }
    @HttpPut
    global static ID upsertCase(String subject, String status,String origin, 
                                String priority, String id){
        case cs = new case();
        cs.Id = id;                            
        cs.Subject =subject;
        cs.Status =status;
        cs.Origin =origin;
        cs.Priority =priority;
        upsert cs;
        return cs.id;
    }
}