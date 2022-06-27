public with sharing class validateloginFunction {
    public String val{get;set;}
    public void echoVal()
    {
     val = 'You Entered invalid username and passwork 1 - '+Apexpages.currentPage().getParameters().get('firstParam')+' 2 -'+Apexpages.currentPage().getParameters().get('secondParam');
    }
}