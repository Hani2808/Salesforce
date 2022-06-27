public class NewAndExistingController {

    public Opportunity opportunity { get; private set; }

    public NewAndExistingController() {
        Id id = ApexPages.currentPage().getParameters().get('id');
        opportunity = (id == null) ? new Opportunity() : 
            [SELECT Id ,Name FROM Opportunity];
    }

    public PageReference save() {
        try {
            upsert(opportunity);
        } catch(System.DMLException e) {
            ApexPages.addMessages(e);
            return null;
        }
        //  After successful Save, navigate to the default view page
        PageReference redirectSuccess = new ApexPages.StandardController(Opportunity).view();
        return (redirectSuccess);
    }
}