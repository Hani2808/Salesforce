@isTest
public class TestVerifyDate {
    
    @isTest static void test1(){
        date d = VerifyDate.CheckDates(Date.parse('01/01/2020'), Date.parse('01/03/2020'));
        System.assertEquals(Date.parse('01/03/2020'), d);
    }
    
    @istest static void test2(){
        date d = VerifyDate.CheckDates(Date.parse('01/01/2020'), Date.parse('03/03/2020'));
        System.assertEquals(Date.parse('01/31/2020'), d);
    }
}