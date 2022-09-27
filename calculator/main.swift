//
//  main.swift
//  calculator
//
//  Created by Алексей on 16.09.2022.
//

//import Foundation

print("Добро пожаловать в калькулятор")

print("Выберите операцию: +, -, * или /")
var operation = readLine() ?? ""

print("Введите первое число")
let firstNumber = readLine() ?? ""


print("Введите второе числов")
let secondNumber = readLine() ?? ""

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




