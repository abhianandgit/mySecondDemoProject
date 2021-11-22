public class PostalCodeDetails {
    public string postalPinCode{get;set;}
    public PostalResponseWrapper lstBranches{get;set;}
    Public string postalResponseJSON{get;set;}
    
    public void searchPostalBranch(){
    	//lstBranches = new List<PostOfficeBranch>();
        if(postalPinCode != null && postalPinCode !=''){
            string endPointURL = 'https://api.postalpincode.in/pincode/'+postalPinCode;
            Http postalHttp = new Http();
            
            HttpRequest postalRequest = new HttpRequest();
            postalRequest.setEndpoint(endPointURL);
            postalRequest.setMethod('GET');
            postalRequest.setTimeout(10000);
            
            HttpResponse postalResponse = postalHttp.send(postalRequest);
            System.debug('postalResponse'+postalResponse);
            postalResponseJSON = postalResponse.getBody();
            System.debug('postalResponseJSON' +postalResponseJSON);
            //JsonParser cc =(JsonParser)System.JSON.deserialize(postalResponseJSON, JsonParser.class);
              lstBranches =(PostalResponseWrapper)JSON.deserialize(postalResponseJSON,PostalResponseWrapper.class);
            system.debug('Deseriaize'+lstBranches);
        }
    }
    public class PostalResponseWrapper{
		public String Status{get;set;}
		public list<PostOffice> PostOffice{get;set;}
		public String Message{get;set;}
    }
	public class PostOffice{
		public String District{get;set;}
		public String Division{get;set;}
		public String Circle{get;set;}
		public String Region{get;set;}
		public String DeliveryStatus{get;set;}
		public String Block{get;set;}
		public String BranchType{get;set;}
		public String State{get;set;}
		public String Description{get;set;}
		public String Country{get;set;}
		public String Name{get;set;}
		public String Pincode{get;set;}
	}
}