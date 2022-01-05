//
//  main.swift
//  DZ-4-4
//
//  Created by user on 05.01.2022.
//

import Foundation

// —————————————————————————<  1  >—————————————————————————
// Задача создавать масииви в котором будет создобавить текст с рандомной длиной
// 10 текстов
// текст должен быть от 1 - 20 сим "A"

// [AAAA, A, AAAAAAAA, AAA, AAAAA, AAAAAAAAAAAAAAAA, AAA , AAAAAAAA]

// 32 char print

var array = [String]()
var dlina = 0

for _ in 0...9 {
    var str = ""
    var length = Int.random(in: 1...20)
    for _ in 1...length {
        str.append("A")
    }
    array.append(str)
    dlina = dlina + length
}
print(array)
print("Длина массива: \(dlina) символов.")

 
// —————————————————————————<  2  >—————————————————————————
// Задача в ред лине пользователь вводит мат выражение ( 10 - 30 ; / (2 - 2) ) и выводить результат мат выражения

// подсказка использовать nsexpression

// Пользователь вводит 10 + 30 - 2 - (20 / 2) ---> и в консоли вывводиться ответ
//  "10 + 30 - 2 - (20 / 2)  = 28"


print("Введите мат выражение:")
var str = readLine()!

let expression = NSExpression(format: str)
let result = expression.expressionValue(with: nil, context: nil) as! Int

print("\(str)  = \(result)")


// —————————————————————————<  3  >—————————————————————————
// Пользователь вводит масси из чисел и вывидить самый большое значение
//
// Пользователь вводит 10, 32, 32, -2, 32, 2
// и из него в консоль ввыводиться самое большое число

print("Введите числа через пробел: ")

var numbers = readLine()!
var arrayOfString = numbers.split(separator: " ")
var arrayOfNumbers: [Int] = []

for item in arrayOfString {
    arrayOfNumbers.append(Int(item)!)
}
var newArray = arrayOfNumbers.sorted()

print(newArray.last!)


// —————————————————————————<  4  >—————————————————————————
// Написать код который будет считать площадь куба

print("Введите сторону куба:")
var l = readLine()!

var s = 6 * (Int(l)! * Int(l)!)

print("S (куба) = \(s) см2")

 
// —————————————————————————<  5  >—————————————————————————
// Пользователь вводит массив из имен после пользователь воодит имя которое хочет удалить
// Пользователь вводит  Эльдар, Азамат, Кылым, Айнура
// после пользователь вводит имя которое хочет удалить --> Эльдар
// в консоль выводиться --> Азамат Кылым Айнура

print("Введите имена:")
var userName = readLine()!
var arrayOfNames = userName.split(separator: " ")

print("Какое имя хотите удалить?")

var delName = readLine()!

for _ in arrayOfNames {
    for (i, str) in arrayOfNames.enumerated().reversed() {
        if str == delName {
            arrayOfNames.remove(at: i)
        }
    }
}

print(arrayOfNames)

