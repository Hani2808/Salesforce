public class atest{
    public Opportunity opp{get;set;}
    public Merchandise__c mer{get;set;}
    public atest(ApexPages.StandardController controller)
    {
        mer = (Merchandise__c)controller.getRecord();
    }
    public PageReference Save(){
        upsert mer;
        opp = new Opportunity();
        opp.Name = mer.Name;
        opp.CloseDate = System.today()+1;
        opp.StageName = 'Prospecting';
        insert opp;
        PageReference ref = new PageReference('/'+opp.id);
        return ref;
    }
    public PageReference News(){
        return null;
    }
    public PageReference Cancel(){
        return null;
    }
}