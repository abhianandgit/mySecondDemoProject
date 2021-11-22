@isTest
public class trg2nd_TestClass {

@isTest static void testData(){
        Contact con = new Contact(FirstName='Abhi',LastName='And');
        insert con;
    Contact con1 = [Select id,FirstName,LastName,Phone from Contact where id =:con.id];
    system.assertEquals(con1.Phone,'12345');
    }
}