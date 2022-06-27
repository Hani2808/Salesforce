@isTest
public class BankAccountTest {
    static testMethod void anyname(){
        BankAccount bank= new BankAccount();
        bank.getValues();
        bank.setValue('Hani Verma', 987456321, 5000,2000,3000);
        bank.getValues();
        BankAccount abc= new BankAccount('Hani Verma', 987456321, 5000,2000,3000);
        abc.getValues();
        Integer dep_osit=abc.deposit();
        System.debug('balance after deposit is' + dep_osit);
        Integer with_drawl=abc.withdrawl();
        System.debug('balance after withdrawl is' + with_drawl);        
    }

}