public class NewHero {
    public static void updatecontact(){
        list<Contact> listcon=new list<Contact>();
        list<Contact>con=[select ID,Name From Contact Where lastname='anand'];
        system.debug('Contact'+con);
        for(Contact b:con){
            b.lastname='kanhaiya';
            listcon.add(b); 
        }
        update listcon;
        
    }
}