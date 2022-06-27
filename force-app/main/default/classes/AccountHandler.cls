Public class AccountHandler{
    Public static Account insertNewAccount(String s){
        Account accList = new Account(Name = s);
        try{
            insert accList;
            ID accListID = accList.Id;
            String accListname = accList.Name;
            System.debug('ID = '+ accListID);
            System.debug('Name = '+ accListName);
            return accList;
        }
        
        catch(Exception e){
            System.debug('A DML exception has occurred:' + e.getMessage());        
        }
        return null;
    }
}