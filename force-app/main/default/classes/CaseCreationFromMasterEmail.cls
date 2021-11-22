public class CaseCreationFromMasterEmail{
    Public static Set<String> emailAddress = new Set<String>();
    public static void addEmailAdd(list<Case> lstcase){
        for(case objCase:lstcase){
          if(objCase.ContactEmail !=null){
              emailAddress.add(objCase.ContactEmail);  
            }  
        }  
    }
    /*public static void checkEmail(Set<emailAddress> emails){
     list<case> csList2 = new list<case>();
        List<EmailMasterList__c> temp = [SELECT id, email__c from EmailMasterList__c WHERE email__c in: emails];
			if(!temp.IsEmpty()){
				case cs = new case();
				cs.status= 'closed';
				csList2.add(cs);
				insert csList2;
			}
    }*/

}