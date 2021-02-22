//
//  ConfirmViewController.swift
//  Assignement_L7
//
//  Created by Ievgen Petrovskiy on 22.02.2021.
//

import UIKit

class ConfirmViewController: UIViewController {
    

    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var surnameLable: UILabel!
    
    var firstName = ""
    var lastName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLable.text = firstName
        surnameLable.text = lastName
        
        // Do any additional setup after loading the view.
    }
    

}
