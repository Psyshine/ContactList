//
//  Contact.swift
//  ContactList
//
//  Created by Andry Pro on 19.02.2020.
//  Copyright © 2020 Andry Pro. All rights reserved.
//

import Foundation

struct Contact {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContacts() -> [Contact] {
        
        let names = DataManage.shared.names.shuffled()
        let surnames = DataManage.shared.surnames.shuffled()
        let phones = DataManage.shared.phones.shuffled()
        let emails = DataManage.shared.emails.shuffled()
        
        var contacts = [Contact]()
        
        for contact in 1..<names.count {
                let contact = Contact(name: names[contact],
                                      surname: surnames[contact],
                                      phone: phones[contact],
                                      email: emails[contact])
                contacts.append(contact)
        }
        return contacts
    }
}
