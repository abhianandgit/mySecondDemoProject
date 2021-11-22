public class AccountHandler {
    public static void insertAccount(Integer val){
      List<Account> addAccounts = new List<Account>();
          Integer n = 1;
        while (n<=val){
            Account acc = new Account();
            acc.Name='Acme Inc'+n;
            acc.AccountNumber='A000'+n;
            addAccounts.add(acc);
            n=n+1;
            }
            System.debug('List of Account is'+addAccounts);
        insert addAccounts;
        
    }
}