//
//  ContactTableViewController.swift
//  ContactList
//
//  Created by Andry Pro on 19.02.2020.
//  Copyright © 2020 Andry Pro. All rights reserved.
//

import UIKit

class ContactTableViewController: UITableViewController {
    
    //MARK: - Private properties
    let contacts = Contact.getContacts()
    
    //MARK: - Lifecicle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.backgroundColor = .lightGray
    }
    
    // MARK: - UITableView data source
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell",
                                                 for: indexPath)
        let contact = contacts[indexPath.row]
        cell.textLabel?.text = contact.fullName
        return cell
    }
    
    // MARK: - UITableView Delegate
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        let contact = contacts[indexPath.row]
        performSegue(withIdentifier: "detailSegue", sender: contact)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any? ) {
        if segue.identifier == "detailSegue" {
            let detailViewController = segue.destination as! DetailViewController
            detailViewController.contact = sender as? Contact
        }
    }
}
