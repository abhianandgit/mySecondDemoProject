public class AnimalLocator {
    public static string getAnimalNameById(Integer id){
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+id);
        req.setMethod('GET');
        HttpResponse res = http.send(req);
        system.debug(res);
        String strResp = '';
        if(res.getStatusCode() == 200){
           map<String,Object> results = (map<string,Object>)JSON.deserializeUntyped(res.getBody());
            system.debug('map1'+results);
            map<string,Object> animals = (map<string,Object>)results.get('animal');
            system.debug('map2'+animals);
            strResp = string.valueOf(animals.get('name'));
            System.debug('strResp >>>>>>' + strResp );
        }
        return strResp; 
    }
}