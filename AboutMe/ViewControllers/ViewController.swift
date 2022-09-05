//
//  ViewController.swift
//  AboutMe
//
//  Created by Karpinets Alexander on 03.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    let person = Person(name: "Alexander", surname: "Karpinets", password: "qaz")
    
    override func viewDidAppear(_ animated: Bool) {
        userTextfield.text = ""
        passwordTextfield.text = ""
    }
    
    @IBAction func forgotNameButton(_ sender: UIButton) {
        getAlert(title: "Your fullName is", message: "Alexander Karpinets")
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        getAlert(title: "Your Password", message: "qaz")
        
    }
    @IBAction func loginButton() {
        if userTextfield.text == person.fullName && passwordTextfield.text == person.password {
            let helloVC = storyboard?.instantiateViewController(withIdentifier: "HelloViewController") as! HelloViewController
            navigationController?.pushViewController(helloVC, animated: true)
            helloVC.fullname = userTextfield.text
        } else {
            getAlert(title: "Invalid", message: "Please enter correct your fullName and password")
        }
    }
}

extension ViewController {
    private func getAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { _ in
            self.userTextfield.text = ""
            self.passwordTextfield.text = ""
        }
        alert.addAction(okButton)
        present(alert, animated: true)
    }
}
    
    extension ViewController: UITextViewDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
        
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userTextfield {
            passwordTextfield.becomeFirstResponder()
        } else {
            loginButton()
        }
        return true
    }
}





