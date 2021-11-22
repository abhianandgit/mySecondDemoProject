Global class LeadManager{
    webservice static string createNewLead(string firstName,string lastName,string company,string email){
        try{
        lead ld = new lead();
        ld.FirstName = firstName;
        ld.LastName =  lastName;
        ld.email = email;
        insert ld;
        return ld.id;
        }
        catch(exception ex){
        return 'error while processing the record';
        }
    }
}