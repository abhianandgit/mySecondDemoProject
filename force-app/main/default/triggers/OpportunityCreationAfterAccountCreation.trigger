trigger OpportunityCreationAfterAccountCreation on Account (after insert,after update) {
    List<Opportunity> oppList = New List<Opportunity>();
    for(Account acc:Trigger.New){
        if(acc.Rating=='Hot' & acc.Ownership=='Public'){
            Opportunity opp = New Opportunity();
            opp.Name=acc.Name;
            opp.AccountId=acc.Id;
            opp.stageName='start';
            oppList.add(opp);
        }
        Insert oppList;
    }
}