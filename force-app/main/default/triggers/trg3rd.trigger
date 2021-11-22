trigger trg3rd on Opportunity (before update) {
    for(Opportunity opp:trigger.new){
        opp.stageName='Closed Won';
        opp.CloseDate=system.today();
    }
}