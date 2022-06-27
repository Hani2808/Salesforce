@isTest
public class EmployeeTest {
    static testMethod void main() {
        System.debug('First Test');
        Employee emp = new Employee();
        emp.getValues();
        emp.setValues('Kush', 'Managar', '96969697', 100000);
        emp.getValues();
        Employee obj = new Employee('sarthak', 'ABC', '96979896', 150000);
        obj.getValues();
    }
}