//
//  TabBarViewController.swift
//  ContactListTableView HW2.7
//
//  Created by Sergey Yurtaev on 30.11.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let contactInfo = Person.getInfoPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers()
    }

    private func setupViewControllers() {
        let contactListVC = viewControllers?.first as! ContactViewController
        let sectionVC = viewControllers?.last as! SectionContactViewController
        
        contactListVC.contactInfo = contactInfo
        sectionVC.contactInfo  = contactInfo
    }
    deinit {
        print("TabBarViewController has been dealocated")
    }
}
