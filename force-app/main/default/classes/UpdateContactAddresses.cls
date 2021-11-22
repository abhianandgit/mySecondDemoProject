public class UpdateContactAddresses implements Database.Batchable<sObject>,Database.stateful
{
    public Integer recordsProcessed = 0;
    Public Database.QueryLocator start(Database.BatchableContext bc){
        string qry ='SELECT ID, BillingStreet, BillingCity, BillingState,'+
            		'BillingPostalCode,(SELECT ID, MailingStreet, MailingCity,'+ 
                    'MailingState, MailingPostalCode FROM Contacts) FROM Account Where BillingCountry =\'USA\'';
        return Database.getQueryLocator(qry);
    }
    Public void execute(Database.BatchableContext bc,list<Account> accLst){
        list<Contact> conLst = new list<Contact>();
        for(account acc:accLst){
            for(Contact con:acc.contacts){
                con.MailingStreet = acc.BillingStreet;
                conLst.add(con);
                recordsProcessed = recordsProcessed + 1;
            }
        }
        update conLst;
    }
    Public void finish(Database.BatchableContext bc){
    	AsyncApexJob job =[select id, status,NumberOfErrors,JobItemsProcessed,
            TotalJobItems, CreatedBy.Email
            FROM AsyncApexJob where id=:bc.getJobId()];
        //after that mail n notification can be sent.
    }
}