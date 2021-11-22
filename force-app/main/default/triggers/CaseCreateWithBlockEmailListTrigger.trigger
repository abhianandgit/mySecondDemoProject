trigger CaseCreateWithBlockEmailListTrigger on Case (after insert) {
    if(Trigger.IsAfter && Trigger.IsInsert){
        Set<String> originSet = new set<string>();
        for(Case cs :Trigger.new){
            if(cs.Origin =='Email'){
              originSet.add(cs.Origin);  
            }            
        }
        if(!originSet.IsEmpty()){
        	CaseCreateWithBlockEmailListBatchClass obj = new CaseCreateWithBlockEmailListBatchClass();
        	Database.executeBatch(obj, 200);
        }
   }
}