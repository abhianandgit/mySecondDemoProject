trigger trg2nd on Contact (before insert) {
    for(Contact con:trigger.new){
        con.Phone='12345';
    }
}