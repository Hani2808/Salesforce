public class ContactAndLeadSearch {
    public Static List<List<sObject>> searchContactsAndLeads(String Lc){
        String soslFindClause = 'Smith';
        List<List<sObject>> searchList = [FIND :soslFindClause IN ALL FIELDS
                                          RETURNING Contact(LastName), Lead(LastName)];
        Lead[] searchLead = (Lead[])searchList[1];
        Contact[] searchContacts = (Contact[])searchList[0];
        System.debug('Found the following accounts.');       
        for (Contact c : searchContacts) {
            System.debug(c.LastName);
        }
        System.debug('Found the following contacts.');
        for (Lead a : searchLead) {
            System.debug(a.LastName);
        }
        return searchList;
            }   
}