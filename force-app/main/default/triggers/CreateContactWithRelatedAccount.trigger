trigger CreateContactWithRelatedAccount on Account (after insert) {
    List<Contact> ConLst = new List<Contact>();
    for(Account acc:trigger.new){
        if(acc.Industry=='Banking'){
            Contact con = new Contact();
            con.AccountId=acc.id;
            con.LastName = acc.Name;
            con.Phone=acc.phone;
            ConLst.add(con);
        }
    }
    Insert ConLst;
}