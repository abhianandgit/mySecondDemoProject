@isTest
public class ex3Test {
    static testMethod void test(){
        ex3 e3 = new ex3();
        e3.Industry = 'Banking';
        e3.invoke();
        System.assertEquals(e3.Rating,'Hot');
        e3.Industry = 'Energy';
        e3.invoke();
        System.assertEquals(e3.Rating,'Warm');
    }
}