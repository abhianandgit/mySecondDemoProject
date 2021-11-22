@isTest
public class trg3rd_Test {
@testSetup
    static void testData(){
        Opportunity opp = new Opportunity();
        opp.Name='abc';
        opp.CloseDate = system.today()-1;
        opp.StageName='Prospecting';
        insert opp;
    }
    testMethod static void test(){
        Opportunity op=[Select id,name,closeDate,stageName from Opportunity];
        system.debug(op.Name);
        system.debug(op.stageName);
        system.debug(op.CloseDate);
        update op;
        Opportunity op1=[Select id,name,closeDate,stageName from Opportunity where id =:op.id];
        system.assertEquals(op1.stageName, 'Closed Won');
        system.assertEquals(op1.CloseDate, System.today());
    }
}