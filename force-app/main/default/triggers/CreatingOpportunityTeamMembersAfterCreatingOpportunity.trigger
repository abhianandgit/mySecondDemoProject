trigger CreatingOpportunityTeamMembersAfterCreatingOpportunity on Opportunity (before insert,after insert) {
    if(trigger.isBefore & trigger.isInsert){
        for(Opportunity opp:trigger.new){
            opp.StageName='Prospecting';
            opp.Type='New Customer';
            opp.CloseDate=System.today()+15;
        }
    }
    if(trigger.isAfter & trigger.isInsert){
    List<OpportunityTeamMember> oppTm = new list<OpportunityTeamMember>();
        User u =[select id,Username from user where username='abhishekteen@gmail.com'];
        for(Opportunity opp:trigger.new){
           OpportunityTeamMember oTM=new OpportunityTeamMember();
            oTM.OpportunityId=opp.id;
            oTM.OpportunityAccessLevel='Read';
            oTM.UserId=u.id;
            oppTm.add(oTM);
        }
        Insert oppTm;    
    }    
}