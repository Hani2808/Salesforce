@isTest
public class Book {
    @isTest
    public static void books(){
        try{
            List<Book__c> BookList = new List<Book__c>();
            for(integer i = 1; i<15; i++){
                Book__c BookRecord = new Book__c();
                BookRecord.Author__c = 'qwerty' +i;
                BookRecord.Edition__c = 'asdfgh' +i;
                BookRecord.Price__c = 500;
                BookRecord.Name = 'Hani' +i;
                BookList.add(BookRecord);
            }
            insert BookList;
            
        }catch(exception e)
        { system.debug('error occured ' + e.getMessage() + 'in line number' +e.getLineNumber());}
    }

}