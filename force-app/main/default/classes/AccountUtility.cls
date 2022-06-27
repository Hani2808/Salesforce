public class AccountUtility {
    public static void viewAnnualRevenue(){
        try{
            List<Account> accountsList = New List<Account>();
            accountsList = [SELECT Id, Name , AnnualRevenue FROM Account];
            
            for (Account accObj : accountsList){
                String acctRev = accObj.name + ':' + accObj.AnnualRevenue;
                system.debug(acctRev);
            }
        }
        catch(Exception e){
            system.debug('error occured' + e.getMessage() +'In Line number' + e.getLineNumber());
        }
    }

}