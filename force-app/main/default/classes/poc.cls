//poc.apxc

/*************************************************************************
source      : codengine.in
Description : Apex class to fetch accounts and related contacts
**************************************************************************/
public class poc {
    @AuraEnabled(cacheable = true)
    public static List<Contact> getContacts() {
        List<Contact> contacts =
            [SELECT Id, Name, Phone, Email, AccountId FROM Contact where phone != null limit 50];
        return contacts;
    }
}