Global class CaseCreateWithBlockEmailListBatchClass implements Database.Batchable<sObject>{
    Global Database.QueryLocator start(Database.BatchableContext bc){
       string query = 'select id,name,Email__c from EmailMasterList__c';
        return Database.getQueryLocator(query);
    }
    Global void execute(Database.BatchableContext bc,List<EmailMasterList__c> lstEml){
        List<Case> lstCase = new List<Case>();
        Set<String> emailSet = new Set<String>(); 
        if(!lstEml.isEmpty()){
        	for(EmailMasterList__c eml:lstEml){
        		emailSet.add(eml.Email__c);
            }
            if(!emailSet.isEmpty()){
                Case cs = new Case();
                cs.Subject = 'TestCase';
                cs.Status ='closed';
                lstCase.add(cs);
            }
            Insert lstCase;
        } 
    }
    Global void finish(Database.BatchableContext bc){
     Messaging.SingleEmailMessage semail = new Messaging.SingleEmailMessage();
		String[] sendingTo = new String[]{'XXXXXXXXXXXXXX@gmail.com'};
		semail.setToAddresses(sendingTo);
		String[] sendingToBccAdd = new String[]{'XXXXXXXXX@gmail.com'};
		semail.setBccAddresses(sendingToBccAdd);
		String[] sendingTocAdd = new String[]{'XXXXXXXXXXX@gmail.com'};
		semail.setCcAddresses(sendingTocAdd);
		semail.setSubject('Single Email message Example');
		semail.setPlainTextBody('Hello!!!!!!!!!!This is a test email to test single email message program');
		Messaging.sendEmail(new Messaging.SingleEmailMessage[] {semail});
		//return null;   
    }

}