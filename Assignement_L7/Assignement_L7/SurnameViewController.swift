//
//  SurnameViewController.swift
//  Assignement_L7
//
//  Created by Ievgen Petrovskiy on 21.02.2021.
//

import UIKit

class SurnameViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var surnameTextField: UITextField!
    
    var surname = Surname()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.surnameTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    /// Use return button to hide keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return surnameTextField.resignFirstResponder()
    }
    
    /// Use tap on screen to hide keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func surnameViewNextControllerButton(_ sender: Any) {
    }
    
}
