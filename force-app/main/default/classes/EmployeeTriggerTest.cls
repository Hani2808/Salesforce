@isTest 
public class EmployeeTriggerTest {
    
    static testMethod void testMethod1() 
	{
		Company__c testCompany = new Company__c();
		testCompany.Name='Test Company' ;
        testCompany.Zip_Code__c=123456;
		insert testCompany;
        Company__c testCompany2 = new Company__c();
		testCompany2.Name='Test Company' ;
        testCompany2.Zip_Code__c=123456;
		insert testCompany2;
		
		Employee__c Emp = new Employee__c();
		Emp.First_Name__c='Test';
		Emp.Last_Name__c='Test';
		Emp.Company__c= testCompany.id;
		insert Emp;
        Employee__c Emp2 = new Employee__c();
		Emp2.First_Name__c='Test';
		Emp2.Last_Name__c='Test';
		Emp2.Company__c= testCompany.id;
		insert Emp2;
        delete Emp;
        
        Emp2.Company__c= testCompany2.id;
        update Emp2;
        
    }

}