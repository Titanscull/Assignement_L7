//
//  ViewController.swift
//  Assignement_L7
//
//  Created by Ievgen Petrovskiy on 21.02.2021.
//

import UIKit

class NameViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameSurnameLabel: UILabel!
    
    weak var delegate: ConfirmViewControllerDelegate?
    
    var nameModel = Name()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameTextField.delegate = self
        
        nameSurnameLabel.isHidden = true
        
    }
    
    /// Next button action - load data & bring appearance of a SurnameVC
    @IBAction func nameControllerNextButton(_ sender: UIButton) {
        
        if nameTextField.text == "" || nameSurnameLabel.isHidden == false {
            return
        }
        
        if let enteredName = nameTextField.text {
            nameModel.returnName(yuoreName: enteredName)
            
            print("User did type his name as \(enteredName)")
            print(" Model saved name as \(nameModel.name)")
        }
        
        performSegue(withIdentifier: "surnameVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "surnameVC" {
            guard let surnameVC = segue.destination as? SurnameViewController else {return}
            
            _ = surnameVC.view
            
            surnameVC.name = nameModel.name
            surnameVC.delegate = self
        }
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        loadView()
        nameSurnameLabel.isHidden = true
    }
    
}

extension NameViewController: ConfirmViewControllerDelegate {
    func getFullName(fullname: String) {
        self.nameSurnameLabel.text = fullname
        self.nameSurnameLabel.isHidden = false
        self.nameTextField.isHidden = true
    }
}

extension NameViewController: UITextFieldDelegate {
    
    /// Use return button to hide keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return nameTextField.resignFirstResponder()
    }
    
    /// Use tap on screen to hide keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func unwindHome(_ sender: UIStoryboardSegue) {
    }
    
}
