@Istest
public class Clone {
static testmethod Void cloneTestclass()
{
   
        Contact con = new Contact();
        con.LastName = 'Test';
        con.Email = 'test@test.com';
           
        Test.startTest();
           insert con;
        Test.stopTest();
        
        List<contact> conlist = [select LastName, email from contact where email= 'test@test.com' ];
           System.assertEquals(2,conlist.size());
    }
}