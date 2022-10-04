
import Foundation

//Дз №6 задание 1

var productName: [String] = []
var manufacturer: [String] = []
var weight: [Int] = []
var barcode: [Int] = []
var cost: [Int] = []
var discount: [Int] = []
var availability: [String] = []
var amount: [Int] = []
var total: [Int] = []
var sum = 0
var count = 0
var newProduct = ""

while newProduct != "готово" {
    print("Введите название или *готово* для выхода")
    let newProduct = readLine()!
    if newProduct == "готово"{
        break
    }
    productName.append(newProduct)
    print("Производитель")
    let newManufacturer = readLine()!
    manufacturer.append(newManufacturer)
    print("Вес")
    let newWeight = Int(readLine()!)
    weight.append(newWeight ?? 0)
    print("Штрих-код")
    let newBarcode = Int(readLine()!)
    barcode.append(newBarcode ?? 0)
    print("Цена")
    let newCost = Int(readLine()!)
    cost.append(newCost ?? 0)
    print("Скидка")
    let newDiscount = Int(readLine()!)
    discount.append(newDiscount ?? 0)
    print("В наличии")
    let newAvailability = readLine()!
    availability.append(newAvailability)
    print("Количество")
    let newAmount = Int(readLine()!)
    amount.append(newAmount ?? 0)
    total.append(amount[count]*cost[count]-amount[count]*cost[count]*discount[count]/100)
    count += 1
}

for i in 0...count{
 print("\(barcode[i]). \(productName[i]) / \(manufacturer[i]) / \(weight[i]) кг / цена - \(cost[i]) / количество \(amount[i]) шт / скидка \(discount[i]) % / итого \(total[i]) / в наличии \(availability[i])")
    sum += total[i]
}
print("Итого - \(sum) сом")


//задание 2

var account: [String] = []
var login: [String] = []
var password: [String] = []
var secretWords: [String] = []
var index = -1
let a = 0

while a == 0 {
    print("Введите название или выход")
    let newAccount = readLine()!
    if newAccount == "Выход" {
        break
    }
    index += 1
    account.append(newAccount)
    print("Логин")
    let newLogin = readLine()!
    login.append(newLogin)
    print("Пароль")
    var newPassword = readLine()!
    password.append(newPassword)
    
    for i in 0..<index{
        while newPassword == password[i]{
            print("Ваш пароль совпадает с паролем от \(account[i]). Введите другой пароль")
            newPassword = readLine()!
        }
    }
    password.append(newPassword)
    print("Введите секретное слово")
    let newSecretWords = readLine()!
    secretWords.append(newSecretWords)
    
    for i in 0...index {
        print(account[i], login[i], password[i], secretWords[i])
    }
}
