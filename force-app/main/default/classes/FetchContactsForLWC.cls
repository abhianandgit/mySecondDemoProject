public with sharing class FetchContactsForLWC {
    @AuraEnabled(Cacheable = True)
    public static List<Contact> getContacts(Integer numberOfContacts){
        List<Contact> lstCon = [SELECT Id, Name, Phone, Email FROM Contact limit:numberOfContacts];
        return lstCon;
    }
}