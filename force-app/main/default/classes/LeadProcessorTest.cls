@isTest
public class LeadProcessorTest {
	@testSetup
    static void setup(){
        List<Lead> ldLst =new List<Lead>();
        for(integer i=1;i<=200;i++){
            lead ld = new Lead();
            ld.LastName ='abhi'+i;
            ld.LeadSource ='cc';
            ld.Company ='TMC';
            ld.MobilePhone ='123';
            ldLst.add(ld);
        }
        insert ldLst;
    }
    @isTest
    static void test(){
        test.startTest();
        LeadProcessor ldPrc = new LeadProcessor();
        id jobId = Database.executeBatch(ldPrc);
        test.stopTest();
        System.assertEquals(200, [select count() from lead where LeadSource = 'Dreamforce']);
    }
}