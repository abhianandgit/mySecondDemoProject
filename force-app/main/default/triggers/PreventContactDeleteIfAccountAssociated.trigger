trigger PreventContactDeleteIfAccountAssociated on Contact (before delete) {
    for(Contact con:trigger.old){
        if(con.AccountId != null || con.AccountId !=''){
            con.AccountId.addError('Account is associated you can not delete');
        }
    }
}