class User {
    var name: String
    var age: Int
    var email: String
    
    init(name: String, age: Int, email: String) {
        self.name = name
        self.age = age
        self.email = email
    }
    
    func toString() -> String {
        return """
        {
            "name": "\(name)",
            "age": \(age),
            "email": "\(email)"
        }
        """
    }
}
