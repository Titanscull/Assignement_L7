//
//  SurnameViewController.swift
//  Assignement_L7
//
//  Created by Ievgen Petrovskiy on 21.02.2021.
//

import UIKit

class SurnameViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var surnameTextField: UITextField!
    
    var surnameModel = Surname()
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.surnameTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func surnameViewNextControllerButton(_ sender: Any) {
        if let enteredSurname = surnameTextField.text {
            surnameModel.returnSurname(youreSurname: enteredSurname)
            
            print("User entered surname \(enteredSurname)")
            print("Model saved surname \(surnameModel.surname)")
        }
        
        performSegue(withIdentifier: "confirmVC", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let confirmVC = segue.destination as! ConfirmViewController
        
        confirmVC.firstName = name
        confirmVC.lastName = surnameModel.surname
    }
    
    /// Use return button to hide keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return surnameTextField.resignFirstResponder()
    }
    
    /// Use tap on screen to hide keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
}
