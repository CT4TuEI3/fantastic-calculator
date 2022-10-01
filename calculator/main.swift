//
//  main.swift
//  calculator
//
//  Created by Алексей on 16.09.2022.
//

//import Foundation

print("Добро пожаловать в калькулятор")

let operation = getDataFromUser(description: "Выберите операцию: +, -, * или /")
let firstNumber = getDataFromUser(description: "Введите первое число")
let secondNumber = getDataFromUser(description: "Введите второе числов")

print("Идёт вычисление: " + firstNumber + " " + operation + " " + secondNumber)

let result = "Результат вычисления: "
if let firstNumber = Int(firstNumber) {
    if let secondNumber = Int(secondNumber) {
        calculate(operation: operation, firstNumber: firstNumber, secondNumber: secondNumber)
    }
    
} else {
    print("Вы ввели неверное первое число")
}

func getDataFromUser(description: String) -> String {
    return readLine() ?? ""
}

func showResult(_ result: Int) {
    let result = String(result)
    let description = "Результат:"
    print(description + " " + result)
}

func calculate(operation: String, firstNumber: Int, secondNumber: Int) {
    switch operation {
    case "+": showResult(firstNumber + secondNumber)
        
    case "-": showResult(firstNumber - secondNumber)
        
    case "*": showResult(firstNumber * secondNumber)
        
    case "/": secondNumber != 0 ? showResult(firstNumber / secondNumber) : print("На 0 делить нельзя!")
        
    default: print("Вы ввели неверную операцию")
    }
}
