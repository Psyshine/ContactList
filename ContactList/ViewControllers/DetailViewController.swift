//
//  ViewController.swift
//  ContactList
//
//  Created by Andry Pro on 19.02.2020.
//  Copyright © 2020 Andry Pro. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var contctFullNameLabel: UILabel!
    @IBOutlet weak var contactPhoneLabel: UILabel!
    @IBOutlet weak var contactEmailLabel: UILabel!
    
    //MARK: - Public properties
    var contact: Contact!
    
    //MARK: - Lifecicle
    override func viewDidLoad() {
        super.viewDidLoad()
        contctFullNameLabel.text = contact.fullName
        contactPhoneLabel.text = contact.phone
        contactEmailLabel.text = contact.email
    }
}

