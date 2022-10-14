//
//  SignInViewController.swift
//  Test
//
//  Created by Vishnu Dev on 06/10/22.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var unameTextfield: UITextField!
    @IBOutlet weak var passwordtextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonActions(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            print("")
        case 2:
            
            NetWorkManager.shared.postApiCall { user in
                DispatchQueue.main.async {
                    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                    let contactListVC = storyBoard.instantiateViewController(withIdentifier: ContactListViewController.nameOfClass) as! ContactListViewController
                    self.navigationController?.pushViewController(contactListVC, animated: true)
                }
            }
            
        case 3:
            navigationController?.popViewController(animated: true)
        default:
            break
        }
    }
    
}
