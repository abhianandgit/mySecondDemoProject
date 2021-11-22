@isTest
public class AccountProcessorTest {
    public static testmethod void TestAccountProcessorTest(){
        Account acc= new Account();
        acc.name='abc';
        acc.Number_Of_Contacts__c =1;
        insert acc;
        
        Contact con = new contact();
        con.LastName = 'ccc';
        con.AccountId = acc.id;
        insert con;
        
        list<id> lstId = new List<id>();
        lstId.add(acc.id);
        system.debug(lstId);
        
        test.startTest();
        AccountProcessor.countContacts(lstId);
        Account accN=[select id,name,Number_Of_Contacts__c from Account where id=:acc.id];
        System.debug(accN);
        system.assertEquals(Integer.valueOf(accN.Number_of_Contacts__c) ,1);
        test.stoptest();
    }
}