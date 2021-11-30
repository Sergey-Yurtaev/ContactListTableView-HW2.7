//
//  Person.swift
//  ContactListTableView HW2.7
//
//  Created by Sergey Yurtaev on 30.11.2021.
//

struct Person {
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var nameAndSurname: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getInfoPersons() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        for index in 0..<names.count {
            persons.append(Person(name: names[index],
                                  surname: surnames[index],
                                  phoneNumber: phones[index],
                                  email: emails[index]))
        }
        
        return persons
    }
}
