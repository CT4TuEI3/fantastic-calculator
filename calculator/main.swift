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
        
        switch operation {
        case "+":
            print(result + String(firstNumber + secondNumber))
            
        case "-":
            print(result + String(firstNumber - secondNumber))
            
        case "*":
            print(result + String(firstNumber * secondNumber))
            
        case "/":
            secondNumber != 0 ? print(result + String (firstNumber / secondNumber)) : print("На 0 делить нельзя!")
            
        default: print("Вы ввели неверную операцию")
        }
        
    } else {
        print("Вы ввели неверное второе число")
    }
} else {
    print("Вы ввели неверное первое число")
}

func getDataFromUser(description: String) -> {
    print(description)
    return readLine() ?? ""
}
