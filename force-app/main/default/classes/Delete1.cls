public class Delete1 {
    public void deleteop(){
        Account act=[select name from Account where name='hello'];
        delete act;
    }

}