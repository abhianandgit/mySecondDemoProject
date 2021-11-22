public class Update1 {
    public void updateop(){
        account u=[select name from account where name='hello'];
        u.name='hi';
        u.accountnumber='2222';
        update u;
    }

}