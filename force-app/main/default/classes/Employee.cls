public class Employee {
	private String employeeName;
    private String employeeDepartment;
    private String employeemobNumber;
   	private Integer employeeSalary;
  
       public Employee() {
           employeeName = 'Hani verma';
           employeeDepartment = 'Salesforce devloper';
           employeemobNumber = '9758472010';
           employeeSalary = 50000;
    }
    
    public Employee(String name, String dept,String mob, Integer salary) {
        employeeName = name;
        employeeDepartment = dept;
        employeemobNumber = mob;
        employeeSalary = salary;
    }
    
    public void setValues(String name, String dept, String mob, Integer salary) {
        employeeName = name;
        employeeDepartment = dept;
        employeemobNumber = mob;
        employeeSalary = salary;
    }
    
    public void getValues() {
        System.debug('Employee Name: ' + employeeName);
        System.debug('Employee Dept: ' + employeeDepartment);
        System.debug('Employee Mob: ' + employeemobNumber);
        System.debug('Employee Salary: ' + employeeSalary);
    }
}