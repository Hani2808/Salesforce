public class ContactSearch {
    public static List<Contact> searchForContacts(string LastName,string MailingPostalcode){
        List<Contact> conList = [SELECT LastName, MailingPostalCode FROM Contact WHERE LastName =:LastName AND MailingPostalCode =:MailingPostalCode]; 
        System.debug(conList);
        return conList;
    }   
}