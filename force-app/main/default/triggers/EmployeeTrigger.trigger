trigger EmployeeTrigger on Employee__c (After insert, after update, After delete, After undelete)
{
 List<Employee__c> empList = Trigger.isDelete ? Trigger.old : Trigger.new;
 Set<Id> companyIdSet = new Set<Id>();
 for (Employee__c emp : empList) {
     
     	if (Trigger.isUpdate && Trigger.oldMap.get(emp.Id).Company__c != emp.Company__c) {
            companyIdSet.add(emp.Company__c);
            companyIdSet.add(Trigger.oldMap.get(emp.Id).Company__c);
        }             
     
     	if (emp.Company__c != null) {
            companyIdSet.add(emp.Company__c);
        }
    }
    
    
    List<Company__c> EmpNo = new List<Company__c>();
    Company__c c = new Company__c();
    for (AggregateResult ar : [SELECT Company__c CmpId, Count(id)EmployeeCount 
                               FROM Employee__c 
                               WHERE Company__c in: companyIdSet
                               GROUP BY Company__c]){
        
        c.Id = (Id)ar.get('CmpId'); 
        c.No_Of_Employees__c = (Integer) ar.get('EmployeeCount');
        EmpNo.add(c);
                                   
    }
      update EmpNo;
}