public class NewCaseListController {

    public static list<case> GetNewCases() 
    {
    list<case> newcase = new list<case>();
    newcase = [Select Id,CaseNumber from case where status='New'];
    
        return newcase;
    }  

}