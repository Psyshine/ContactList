//
//  FullContactTableViewController.swift
//  ContactList
//
//  Created by Andry Pro on 19.02.2020.
//  Copyright © 2020 Andry Pro. All rights reserved.
//

import UIKit

class FullContactTableViewController: ContactTableViewController {

  

    // MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UILabel(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: self.view.frame.width, height: 50)))
        let label = UILabel(frame: CGRect(x: 20, y: 0, width: self.view.frame.width, height: 30))
        headerView.backgroundColor = .lightGray
        label.text = contacts[section].fullName
        headerView.addSubview(label)
        return headerView
    }
    
    

    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullContactCell", for: indexPath)
        let phone = contacts[indexPath.section].phone
        let email = contacts[indexPath.section].email
        cell.textLabel?.text = phone
        cell.detailTextLabel?.text = email
        return cell
    }
   
    override func numberOfSections(in tableView: UITableView) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
}
