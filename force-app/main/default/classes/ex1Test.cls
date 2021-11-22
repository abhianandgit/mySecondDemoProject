@isTest
public class ex1Test {
    testMethod static void test(){
        ex1.callMe();
        system.assertEquals(ex1.Name,'Abhishek');
    }
    testMethod static void test1(){
        ex1.invokeMe();
        System.assertEquals(ex1.Name,'Anand');
    }
      
    
}