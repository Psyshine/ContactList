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
        
        var names = ["Andry", "James", "Roberto", "Sadio", "Mohamed"]
        var surnames = ["Salah", "Firmino", "Milner", "Robertson", "Mane"]
        var phones = ["11111", "22222", "33333", "44444", "55555"]
        var emails = ["email1@me.com",
                      "email3@me.com",
                      "email2@me.com",
                      "email4@me.com",
                      "email5@me.com"] // Понимаю что массивам здесь не место и нужно вынести их в структуру, но не могу понять, как потом к ним достучаться.
        var contacts = [Contact]()
        
        names.shuffle()
        surnames.shuffle()
        emails.shuffle()
        phones.shuffle()
        
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
