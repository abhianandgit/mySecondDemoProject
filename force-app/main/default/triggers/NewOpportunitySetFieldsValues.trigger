trigger NewOpportunitySetFieldsValues on Opportunity (before insert) {
    for(Opportunity opp:Trigger.New){
        opp.CloseDate = System.today()+15;
        opp.StageName = 'Prospecting';
        opp.Type = 'New Customer';
        opp.LeadSource = 'Web';
    }

}