trigger validateContact on Contact (before insert,before update) {
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)){
        for(Contact con:Trigger.New){
            if(con.Phone == null || con.Phone == '')
            {
                con.Phone.addError('Phone is mandatory');
            }
            else if(con.Email == null || con.Email == '')
            {
                con.Email.addError('Email is Mandatory');   
            }                
        }
    }
}