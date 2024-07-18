public class Employee {

    // Class variables
    private String name;
    private String department;
    private Decimal monthlySalary;

    // Constructor to initialize employee here is the change I have made details
    public Employee(String empName, String dept, Decimal salary) {
        this.name = empName;
        this.department = dept;
        this.monthlySalary = salary;
    }

    // Method to calculate annual salary
    public Decimal calculateAnnualSalary() {
        return monthlySalary * 12;
    }

    // Method to display employee information
    public void displayEmployeeInfo() {
        Decimal annualSalary = calculateAnnualSalary();
        System.debug('Employee Name: ' + name);
        System.debug('Department: ' + department);
        System.debug('Monthly Salary: $' + monthlySalary);
        System.debug('Annual Salary: $' + annualSalary);
    }

    // Getter and setter methods (optional, depending on need)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public Decimal getMonthlySalary() {
        return monthlySalary;
    }

    public void setMonthlySalary(Decimal monthlySalary) {
        this.monthlySalary = monthlySalary;
    }
}
