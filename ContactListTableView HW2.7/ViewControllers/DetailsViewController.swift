//
//  DetailsViewController.swift
//  ContactListTableView HW2.7
//
//  Created by Sergey Yurtaev on 30.11.2021.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contactInfo: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneLabel.text = "Phone: \(contactInfo.phoneNumber)"
        emailLabel.text = "Email: \(contactInfo.email)"
        title = contactInfo.nameAndSurname
    }
    deinit {
        print("DetailsViewController has been dealocated")
    }
}


