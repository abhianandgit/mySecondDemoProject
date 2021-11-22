@isTest
public class ex4Test {
@testSetup
    public static void testData(){
        Account acc= new Account();
        acc.Name='Abhishek';
        acc.Rating='Cold';
        acc.Phone='456';
        insert acc;
    }
    @isTest static void m1Create(){
        Account acc=[Select id,Name,Rating,Phone from Account];
        System.debug(acc.Name);
        System.debug(acc.Rating);
        System.debug(acc.Phone);
        System.debug(acc);
        /*ex4 e4 = new ex4();
        e4.create();
        list<Account> acc1=[Select id,Name,Rating,Phone from Account];
		system.debug(acc1);
        system.debug(acc1.size());*/
        
        
    }
}