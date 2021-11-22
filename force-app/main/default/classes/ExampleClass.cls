public class ExampleClass {
    public string stageName;
    public string typeName;
    public date closeDate;
    public void invoke(){
        if(typeName=='new Customer'){
          stageName='Prospect';
            closeDate=system.today()+15;
        }
        else{
            stageName = 'Closed Won';
            closeDate = system.today();
        }
    }

}