@isTest
public class TestClassTrg1 {
@testSetup
    public static void testData(){
    Account acc = new Account(Name='Abc');
        insert acc;
     }
     testMethod static void test(){
        Account acc1=[Select id ,name,rating,industry from Account];
        System.debug(acc1.name);
        System.debug(acc1.rating);
         System.debug(acc1.industry);
        
        Account acc2=[select id,name,rating,industry,ownership from account where id=:acc1.id];
        system.assertEquals(acc2.rating,'Hot');
    }	
}