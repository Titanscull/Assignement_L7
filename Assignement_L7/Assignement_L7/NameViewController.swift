//
//  ViewController.swift
//  Assignement_L7
//
//  Created by Ievgen Petrovskiy on 21.02.2021.
//

import UIKit

class MainViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var nameSurnameLabel: UILabel!
    
    var nameModel = Name()
    var surnameModel = Surname()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.nameTextField.delegate = self
        
        nameSurnameLabel.isHidden = true
        
    }
    
    /// Next button action - load data & bring appearance of a SurnameVC
    @IBAction func nameControllerNextButton(_ sender: UIButton) {
        if let enteredName = nameTextField.text {
            nameModel.returnName(yuoreName: enteredName)
            
            print(enteredName)
            nameSurnameLabel.text = nameModel.name
            
            print(nameModel.name)
        }
    }
    
    /// Use return button to hide keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return nameTextField.resignFirstResponder()
    }
    
    /// Use tap on screen to hide keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
   
    
}

