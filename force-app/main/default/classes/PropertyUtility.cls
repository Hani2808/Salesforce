public class PropertyUtility {
    Public static void newListedProperties(){
        try{
            List<Property__c> newPropList = new List<Property__c>();
            newPropList = [Select Id, Name, Broker__r.Email__c, Days_On_Market__c From Property__c Where Days_On_Market__c <= 30];
            
            for(Property__c pList : newPropList ){
                String propEmail = pList.Name + ':' +pList.Broker__r.Email__c;
                System.debug(propEmail);
            }
        }
        catch(Exception e){
            system.debug('ERROR OCCURED' + e.getMessage() + 'in Line Number' + e.getLineNumber());
        }
            
    }

}