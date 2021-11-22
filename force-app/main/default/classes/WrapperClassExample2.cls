public class WrapperClassExample2 {
	public string Name;
    public string Industry;
    public List<String> phone;
    public void method2(){
        List<Account> accList=[Select name,Industry,(Select Name,Phone from Contacts)from Account];
        List<WrapperClassExample2> wrpClList=new List<WrapperClassExample2>();
        WrapperClassExample2 wcl= new WrapperClassExample2();
        for(Account acc:accList){            
            wcl.Name=acc.Name;
            wcl.Industry=acc.Industry;
            List<string> myPhones= new List<string>();
            for(Contact con:acc.contacts){
                myPhones.add(con.phone);                    
            }
            wcl.phone=myPhones;
            wrpClList.add(wcl);
       }
        system.debug(wrpClList.size());
}
}