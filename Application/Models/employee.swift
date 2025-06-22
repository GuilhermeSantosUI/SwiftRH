class Employee: User {
    var department: Department
    var salary: Double
    
    init(name: String, age: Int, email: String, department: Department, salary: Double) {
        self.department = department
        self.salary = salary
        super.init(name: name, age: age, email: email)
    }
    
    override func toString() -> String {
        return """
        {
            "name": "\(name)",
            "age": \(age),
            "email": "\(email)",
            "department": "\(department.name)",
            "salary": \(salary)
        }
        """
    }
}
