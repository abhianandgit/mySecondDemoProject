@isTest
public class ex2Test {
    @isTest static void m1(){
        ex2 e= new ex2();
        e.invoke();
        system.assertEquals(e.industry,'Banking');
    }
    @isTest static void m2(){
        ex2 e= new ex2();
        e.call();
        system.assertEquals(e.rating, 'warm');
    }
             
    
}