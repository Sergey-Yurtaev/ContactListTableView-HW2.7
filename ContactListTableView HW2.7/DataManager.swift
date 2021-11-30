//
//  DataManager.swift
//  ContactListTableView HW2.7
//
//  Created by Sergey Yurtaev on 30.11.2021.
//

class DataManager {
    
    static let shared = DataManager() // синглтон, один  на весь проект. создали статичный объект этого же класса.
    
    private init() {} // для невозможностти создания второго такого объекта за пределами этого класса делаем приватный инициализатор
        
    var names = [
        "Misha", "Victor", "Sergey",
        "Andrey", "Pasha", "Artem",
        "Gleb"
    ]
    
    var surnames = [
        "Schvorsov", "Kostandov", "Yuratev",
        "Chabirov", "Pyzyrev", "Potapenko",
        "Gusarov"
    ]
    
    var emails = [
        "Misha@mail.ru", "Victor@mail.ru", "Sergey@mail.ru",
        "Andrey@mail.ru", "Pasha@mail.ru", "Artem@mail.ru",
        "Gleb@mail.ru"
    ]
    
    var phones = [
        "8(908)066-34-65", "8(912)808-03-51", "8(963)467-13-33",
        "8(908)580-87-77", "8(906)866-49-70", "8(901)330-98-87",
        "8(952)501-47-23"
    ]
}
