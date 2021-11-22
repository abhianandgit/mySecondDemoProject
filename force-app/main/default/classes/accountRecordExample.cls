public class accountRecordExample{
    public List<Account> acc{get;set;}
        public accountRecordExample(){
            acc=[SELECT Name,Phone,AccountNumber from Account LIMIT 5];
                   
        }



}