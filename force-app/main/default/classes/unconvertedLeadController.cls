public class unconvertedLeadController {
    public List<Lead> ldlst{get;set;}
    public unconvertedLeadController(){
        ldlst = new List<Lead>();
         ldlst=[SELECT id,Name,phone,Rating FROM Lead WHERE isConverted = false];
    
    }




}