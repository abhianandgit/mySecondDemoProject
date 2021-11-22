public class LeadConversionAuraController {
    //1. The @AuraEnabled annotation enables client- and server-side access to an Apex controller method. Providing this annotation makes your methods available to your Lightning components.
    @AuraEnabled
    public static list<leadConversionWrapper> getLeadWithCheckbox(){
        //2. Performing query on lead.
        list<Lead> leadObj =[SELECT id,Name,Email,phone,company,status FROM Lead WHERE IsConverted=false];
        list<leadConversionWrapper> leadWrapper= new list<leadConversionWrapper>();
        for(Lead i:leadObj){
            //3. Adding lead in wrapper class.
            leadWrapper.add(new leadConversionWrapper(i)) ; 
        }
        //4. Returning wrapper class.
        return leadWrapper;
    }
    //5. The @AuraEnabled annotation enables client- and server-side access to an Apex controller method. Providing this annotation makes your methods available to your Lightning components.
    @AuraEnabled
    //6. This method used to convert lead.
    public static void convertSelectedLead(List<Lead> selectedLead){
        for(lead leadObj: selectedLead){
            Database.LeadConvert lc = new Database.LeadConvert();
            lc.setLeadId(leadObj.id);
            lc.setopportunityname(leadObj.Company);
            LeadStatus convertStatus = [SELECT Id, MasterLabel FROM LeadStatus WHERE IsConverted=true LIMIT 1];
            lc.setConvertedStatus(convertStatus.MasterLabel);
            //7. Lead conversion.
            Database.LeadConvertResult lcr = Database.convertLead(lc);
        }     
    }
    // 8. Wrapper class to hold lead with checkbox.
    Public class leadConversionWrapper{
        @AuraEnabled
        Public Lead leadObj;
        @AuraEnabled
        Public Boolean isBoolean;
        public leadConversionWrapper(Lead leadObj){
            this.leadObj = leadObj;
            this.isBoolean = isBoolean;
        }
    }
    
}