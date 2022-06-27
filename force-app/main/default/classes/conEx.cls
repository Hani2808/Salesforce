public class conEx {
    
    private final Contact con;
    
    public conEx(ApexPages.StandardController stdController) {
        stdController.addFields(new String[]{
            'Name',
            'CreatedDate'    
        });
        this.con = (Contact)stdController.getRecord();
    }
    
    public String getMessage() {
        return 'Hello ' + con.Name + ', This record is created on ' + con.CreatedDate;
    }
}