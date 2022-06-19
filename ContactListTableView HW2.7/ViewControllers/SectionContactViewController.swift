//
//  SectionContacteViewController.swift
//  ContactListTableView HW2.7
//
//  Created by Sergey Yurtaev on 30.11.2021.
//

import UIKit

class SectionContactViewController: UITableViewController {

    var contactInfo: [Person] = []
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactInfo.count
    }
    
    //    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    //        contactInfo[section].nameAndSurname
    //    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.backgroundColor = .gray
    }
    
    // Использование метода для кастомизации секции без использования кастомного класса с настройкой отступов
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = UIView()
        
        let label = UILabel(frame: CGRect(x: 20, y: 3, width: 300, height: 20))
        label.text = contactInfo[section].nameAndSurname
        label.textColor = .white
        
        headerView.addSubview(label)
        return headerView
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        
        let info = contactInfo[indexPath.section]
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = info.phoneNumber
            cell.imageView?.image = UIImage(systemName: "phone")
        case 1:
            cell.textLabel?.text = info.email
            cell.imageView?.image = UIImage(systemName: "tray")
        default:
            break
        }
        
        return cell
    }
    
    // hide cell selection
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // Использование метода для кастомизации секции с использованием кастомного класса
    /*
     override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
     let headerCell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell") as! HeaderCell
     
     headerCell.personLabel.text = persons[section].fullName
     
     return headerCell
     }
     */
    
    // Использование метода для кастомизации секции без использования кастомного класса без настройки отступов
    /*
     override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
     
     let label = UILabel()
     label.text = persons[section].fullName
     label.textColor = .white
     //        label.textAlignment = .center
     label.font = UIFont.boldSystemFont(ofSize: 24)
     
     return label
     }
     */
    
    deinit {
        print("SectionContactViewController has been dealocated")
    }
    
}
