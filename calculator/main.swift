//
//  main.swift
//  calculator
//
//  Created by Алексей on 16.09.2022.
//

import Darwin

print("Добро пожаловать в калькулятор")

var history: [String] = []

while true {
    let operation = getDataFromUser(description: "Выберите операцию: +, -, * или /. Для завершения работы введите q. Для просмотра истории введите h")
    if operation == "q" {
        exit(0)
    } else if operation == "h" {
        for example in history {
            print(example)
        }
        continue
    }
    let firstNumber = getDataFromUser(description: "Введите первое число")
    let secondNumber = getDataFromUser(description: "Введите второе числов")
    
    let example = firstNumber + " " + operation + " " + secondNumber
    print("Идёт вычисление: " + firstNumber + " " + operation + " " + secondNumber)
    
    let _ = "Результат вычисления: "
    if let firstNumber = Int(firstNumber) {
        if let secondNumber = Int(secondNumber) {
            let result = calculate(operation: operation, firstNumber: firstNumber, secondNumber: secondNumber)
            if let result = result {
                showResult(result)
                history.append(example + " = " + String(result))
            }
        }
        
    } else {
        print("Вы ввели неверное первое число")
    }
    
    print("")
    print("--------------------------------")
    print("")

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
    case "+": return firstNumber + secondNumber
        
    case "-": return firstNumber - secondNumber
        
    case "*": return firstNumber * secondNumber
        
    case "/":
        if secondNumber != 0 {
            return firstNumber / secondNumber
        } else {
            print("На 0 делить нельзя!")
            return nil
        }
    default: print("Вы ввели неверную операцию")
        return nil
    }
}
