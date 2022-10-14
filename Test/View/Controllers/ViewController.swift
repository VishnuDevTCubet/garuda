//
//  ViewController.swift
//  Test
//
//  Created by Vishnu Dev on 06/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var driverExLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.isHidden = true
    }

    @IBAction func signINAction(_ sender: Any) {
        
    }
    @IBAction func registerAction(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let signInaView = storyBoard.instantiateViewController(withIdentifier: SignInViewController.nameOfClass) as! SignInViewController
        self.navigationController?.pushViewController(signInaView, animated: true)
    }
    @IBAction func takeAtourAction(_ sender: Any) {
    }
    
}

