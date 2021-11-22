public class ex4 {
    public string Name;
    public string Rating;
    public string Phone;
    public void create(){
        Account acc = New Account();
        acc.Name = 'AQT';
        acc.Rating = 'Hot';
        acc.Phone = '1234';
        Insert acc;
    }
    public void modify(){
        List<Account> lstAcc = [Select id,Name,Rating,Phone from Account];
        for(Account acc:lstAcc){
            acc.Rating = 'Warm';
        }
        Update lstAcc;
    }
    public void deleteData(){
        List<Account> lstAcc = [Select id,Name,Rating,Phone from Account where createdDate=Today];
        Delete lstAcc;
    }

}