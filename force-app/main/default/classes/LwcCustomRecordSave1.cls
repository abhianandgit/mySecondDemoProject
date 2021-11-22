public class LwcCustomRecordSave1 {
	@AuraEnabled
    Public static Student__c createStudent(String name,string email,string phone,string city){
    	Student__c std = new Student__c();
        std.Name = name;
        std.Email__c = email;
        std.phone_no__c = phone;
        std.City__c = city;
        insert std;
        return std; 
    }
}