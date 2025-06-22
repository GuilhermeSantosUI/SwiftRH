var departments: [Department] = []
var employees: [Employee] = []

var option: String?

repeat {
    print("\n=== MENU ===")
    print("[1] - Listar Departamentos")
    print("[2] - Cadastrar Departamento")
    print("[3] - Listar Funcionários")
    print("[4] - Cadastrar Funcionário")
    print("[0] - Fechar")
    print("Escolha uma opção:")

    option = readLine()

    switch option {
    case "1":
        print("📂 Departamentos:")
        if departments.isEmpty {
            print("Nenhum departamento cadastrado.")
        } else {
            for (i, dept) in departments.enumerated() {
                print("[\(i)] - \(dept.name)")
            }
        }

    case "2":
        print("Digite o nome do departamento:")
        if let name = readLine(), !name.isEmpty {
            departments.append(Department(name: name))
            print("✅ Departamento '\(name)' cadastrado com sucesso!")
        } else {
            print("❌ Nome inválido.")
        }

    case "3":
        print("👨‍💼 Funcionários:")
        if employees.isEmpty {
            print("Nenhum funcionário cadastrado.")
        } else {
            for emp in employees {
                print(emp.toString())
            }
        }

    case "4":
        if departments.isEmpty {
            print("⚠️ Cadastre um departamento antes de adicionar funcionários.")
            break
        }

        print("Nome:")
        guard let name = readLine(), !name.isEmpty else { print("Nome inválido"); break }

        print("Idade:")
        guard let ageStr = readLine(), let age = Int(ageStr) else { print("Idade inválida"); break }

        print("Email:")
        guard let email = readLine(), !email.isEmpty else { print("Email inválido"); break }

        print("Salário:")
        guard let salaryStr = readLine(), let salary = Double(salaryStr) else { print("Salário inválido"); break }

        print("Selecione o número do departamento:")
        for (i, dept) in departments.enumerated() {
            print("[\(i)] - \(dept.name)")
        }

        guard let deptIndexStr = readLine(),
              let deptIndex = Int(deptIndexStr),
              departments.indices.contains(deptIndex) else {
            print("Departamento inválido")
            break
        }

        let dept = departments[deptIndex]
        let emp = Employee(name: name, age: age, email: email, department: dept, salary: salary)
        employees.append(emp)
        print("✅ Funcionário '\(name)' cadastrado!")

    case "0":
        print("👋 Encerrando...")

    default:
        print("❌ Opção inválida")
    }

} while option != "0"
