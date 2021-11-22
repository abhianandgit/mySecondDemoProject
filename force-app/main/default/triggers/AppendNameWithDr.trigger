trigger AppendNameWithDr on Lead (before insert) {
    system.debug(trigger.new);
    List<Lead> ldlst = new List<Lead>();
    for(Lead ld:trigger.new){
        ld.firstName = ' Dr. '+ld.firstName;
        ldlst.add(ld);
    }    
    system.debug(ldlst);
}