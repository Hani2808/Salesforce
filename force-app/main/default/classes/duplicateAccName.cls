@Istest
public class duplicateAccName {
    Static testmethod Void duplicate()
    {
       account acc = new account();
        acc.name = 'abc';
        account acc1 = new account ();
        acc1.name = 'abc';
        Try{
       Test.startTest();
           insert acc;
           insert acc1;
      Test.stopTest();
        }
        catch (exception e){
       // System.Assert(e.getMessage().contains('Account name Already Exist!!'));
        }
    }

}