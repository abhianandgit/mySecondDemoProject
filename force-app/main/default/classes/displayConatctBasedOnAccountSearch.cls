public class displayConatctBasedOnAccountSearch {
@AuraEnabled(cacheable=true)
    public static list<contact> fetchContactByAccName(string accName){
        List<contact> conLst = [select id,FirstName,LastName,Email,Phone,
                                Account.Name from Contact where Account.Name =:accName];
        system.debug('conLst'+conLst);
        return conLst;
        
    }
}