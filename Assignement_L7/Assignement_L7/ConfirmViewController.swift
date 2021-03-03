//
//  ConfirmViewController.swift
//  Assignement_L7
//
//  Created by Ievgen Petrovskiy on 22.02.2021.
//

import UIKit

protocol ConfirmViewControllerDelegate: class {
    func getFullName(fullname: String)
}

class ConfirmViewController: UIViewController {
    
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var surnameLable: UILabel!
    
    weak var delegate: ConfirmViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        let name = nameLable.text ?? ""
        let surname = surnameLable.text ?? ""
        
        let fullname = " Wellcome \(name) \(surname)"
        
        delegate?.getFullName(fullname: fullname)
        
    }
}
