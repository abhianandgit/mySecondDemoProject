trigger ContactBeforeInsert on Contact (before insert) {
for(Contact c: Trigger.new){
c.Description = 'Contact created successfully by using ContactBeforeInsert trigger';
}
}