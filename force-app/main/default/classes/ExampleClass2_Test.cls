@isTest
public class ExampleClass2_Test {
    testMethod static void extest(){
        ExampleClass2 exCl2=new ExampleClass2();
        exCl2.industry='Banking';
        exCl2.invoke();
        system.assertEquals(exCl2.ownership,'public');
        exCl2.industry='IT';
        exCl2.invoke();
        system.assertEquals(exCl2.rating,'warm');
    }

}