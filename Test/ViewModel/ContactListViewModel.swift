//
//  ContactListViewModel.swift
//  Test
//
//  Created by Vishnu Dev on 06/10/22.
//

import UIKit

protocol ContactListViewModelDelegate : NSObject {
    func tableViewDidSelectAction(row : Int)
    func updateTableView()
}

class ContactListViewModel : NSObject, UITableViewDelegate,UITableViewDataSource {
    
    
    weak var delegate : ContactListViewModelDelegate?
    
    var userList : UserModel?
    func getApidata(){
        NetWorkManager.shared.getApiCall { user in
            self.userList = user
            self.delegate?.updateTableView()
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  self.userList?.data?.datas?.count ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ContactListTableViewCell.nameOfClass, for: indexPath) as! ContactListTableViewCell
        cell.nameLabel.text = self.userList?.data?.datas?[indexPath.row].first_name
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.delegate?.tableViewDidSelectAction(row: indexPath.row)
    }
}


