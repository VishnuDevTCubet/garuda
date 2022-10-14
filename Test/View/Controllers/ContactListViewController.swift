//
//  ContactListViewController.swift
//  Test
//
//  Created by Vishnu Dev on 06/10/22.
//

import UIKit

class ContactListViewController: UIViewController {
    var contactListViewModel = ContactListViewModel()
    @IBOutlet weak var tableView: UITableView!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(ContactListTableViewCell.nib(), forCellReuseIdentifier: ContactListTableViewCell.nameOfClass)
        tableView.delegate = contactListViewModel
        tableView.dataSource = contactListViewModel
        contactListViewModel.delegate = self
        contactListViewModel.getApidata()
        
       
    }
    
    @IBAction func navigationbackAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
extension ContactListViewController  : ContactListViewModelDelegate {
    func tableViewDidSelectAction(row: Int) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let contactDetailsVc = storyBoard.instantiateViewController(withIdentifier: ContactDetailsViewController.nameOfClass) as! ContactDetailsViewController
        self.navigationController?.pushViewController(contactDetailsVc, animated: true)
    }
    func updateTableView() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}
