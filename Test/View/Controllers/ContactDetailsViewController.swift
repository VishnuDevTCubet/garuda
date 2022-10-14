//
//  ContactDetailsViewController.swift
//  Test
//
//  Created by Vishnu Dev on 06/10/22.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet weak var addDetailsButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        addDetailsButton.layer.cornerRadius = 30
        // Do any additional setup after loading the view.
    }
    

    @IBAction func navigationBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
