trigger trg1 on Account (before insert) {
    for(Account acc:Trigger.new){
        acc.rating='hot';
        acc.industry='Banking';
        acc.ownership='public';
    }
}