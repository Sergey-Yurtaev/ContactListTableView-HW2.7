//
//  ContactViewController.swift
//  ContactListTableView HW2.7
//
//  Created by Sergey Yurtaev on 30.11.2021.
//

import UIKit

class ContactViewController: UITableViewController {

    var contactInfo: [Person] = []
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactInfo.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailsCell", for: indexPath)
        
        let info = contactInfo[indexPath.row]
        cell.textLabel?.text = "\(info.nameAndSurname)"
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let detailsUserInfoVC = segue.destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsUserInfoVC.contactInfo = contactInfo[indexPath.row]
    }
    
    deinit {
        print("ContactViewController has been dealocated")
    }
}
