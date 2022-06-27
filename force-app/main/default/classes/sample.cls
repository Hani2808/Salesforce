public class sample
{
    public List<CSetting__c	> code {get;set;}
  
    public sample()
    {
        Map<String,CSetting__c	> allCodes = CSetting__c.getAll();
        code = allCodes.values();
    } 
  
}