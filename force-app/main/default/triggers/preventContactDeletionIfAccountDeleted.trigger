trigger preventContactDeletionIfAccountDeleted on Account (before delete) {
    if (trigger.isBefore&& trigger.isDelete){
        List<Contact> lstcon=[select name,accountid from contact where accountid in:Trigger.OldMap.KeySet()];
        //system.debug('error>>>>>>>>>>>>>>>' +lstcon);
        if(!lstcon.isEmpty()){
        for(contact cc:lstcon){
        cc.accountid=null;
        }
        update lstcon;
}

}


}