public class RandomContactFactory {
    
    public static List<contact> generateRandomContacts(Integer numOfContacts, String lastName){
        List<contact> contacts = new List<Contact>();
        
        for(Integer i=0;i<numOfContacts;i++) {
            Contact c = new Contact(FirstName='Test '+ i, LastName=lastName);
            Contacts.add(c);
        }
        System.debug(contacts);
        return contacts;
    }
}