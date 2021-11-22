trigger LeadAssignment on Lead (before insert) {
    User u = [Select id,Name from user where username='abhishekteen@gmail.com'];
    system.debug(u);
    //Group g = [Select id ,name from group where name='VPs'];
    User Ur = [Select id ,name from User where alias='NLark'];

    system.debug(Ur);
    for(Lead ld:Trigger.New){
        if(ld.LeadSource=='Web'){
            ld.OwnerId=u.id;
        }
        else{
           //ld.OwnerId=g.id;
         ld.OwnerId=Ur.id;
        }
    }

}