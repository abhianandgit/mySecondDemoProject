@isTest
public class ExampleClass_Test {
    testMethod static void test(){
        ExampleClass ecl= new ExampleClass();
        ecl.typeName='New Customer';
        ecl.invoke();
        system.assertEquals(ecl.stageName,'Prospect');
		ecl.typeName='Existing One';
		ecl.invoke();
		system.assertEquals(ecl.stageName, 'Closed Won');        
    }

}