import Darwin

print("Добро пожаловать в калькулятор")

var historyOfCalculation: [String] = []

while true {
    let action = getDataFromUser(description: "Нажмите: С - для рассчёта примера. Q - для завершения работы. H - просмотр истории")
    
    switch action {
    case "c":
        calculate()
    case "q":
        exit(0)
    case "h":
        showHistory()
    default:
        print("Недопустимое действие")
    }
    
    print("")
    print("--------------------------------")
    print("")
}

func calculate() {
    let operation = getDataFromUser(description: "Выберите операцию: +, -, * или /.")
    guard operation == "+" || operation == "-" || operation == "*" || operation == "/" else { return
        print("Вы ввели невверную операцию.")
    }
    
    let firstNumber = getDataFromUser(description: "Введите первое число")
    guard let firstNumber = Int(firstNumber) else {
        print("Вы ввели неверное число")
        return
    }
    
    let secondNumber = getDataFromUser(description: "Введите второе числов")
    guard let secondNumber = Int(secondNumber) else {
        print("Вы ввели неверное число")
        return
    }
    
    let example = String(firstNumber) + " " + operation + " " + String(secondNumber)
    print("Идёт вычисление: " + example)
    
    let result = calculate(operation: operation, firstNumber: firstNumber, secondNumber: secondNumber)
    guard let result = result else { return }
    
    showResult(result)
    historyOfCalculation.append(example + " = " + String(result))
}


func getDataFromUser(description: String) -> String {
    print(description)
    return readLine() ?? ""
}

func showResult(_ result: Int) {
    let result = String(result)
    let description = "Результат:"
    print(description + " " + result)
}

func calculate(operation: String, firstNumber: Int, secondNumber: Int) -> Int?{
    switch operation {
    case "+":
        return firstNumber + secondNumber
        
    case "-":
        return firstNumber - secondNumber
        
    case "*":
        return firstNumber * secondNumber
        
    case "/" where secondNumber == 0:
        print("На 0 делить нельзя")
        return nil
    case "/":
        return firstNumber / secondNumber
    default:
        print("Вы ввели неверную операцию")
        return nil
    }
}

func showHistory() {
    for example in historyOfCalculation {
        print(example)
    }
}
