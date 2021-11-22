public class SelectOptionalExample {
    public list < SelectOption > option{set;get;}
    public string selected{get;set;}
    public string result{set;get;}
    public   SelectOptionalExample(){
        option=new list<SelectOption>();
        SelectOption option1 = new SelectOption('Tamil','Chennai');
        SelectOption option2 = new SelectOption('Telugu','Hyderabad');
        SelectOption option3 = new SelectOption('Hindi','Noida');
        option.add(option1);
        option.add(option2);
        option.add(option3);
        System.debug('>>>>>>>>>>>>>>>'+option);
    }
        public void call(){
            result=('you have selected :' +selected);
        }
              
        
    }