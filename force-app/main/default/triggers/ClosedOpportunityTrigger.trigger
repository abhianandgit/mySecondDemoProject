trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    List<Task> tsk=new List<task>();
    for(Opportunity opp:trigger.new){
        if (opp.StageName == 'Closed Won'){
            Task tks=new Task();
            tks.Subject ='Follow Up Test Task';
            tks.WhatId=opp.id;
            tsk.add(tks);
        }   
    }
    Insert tsk;
}