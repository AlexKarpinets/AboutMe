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
    
    private let name = "Alexander"
    private let password = "qaz"
    
    override func viewDidAppear(_ animated: Bool) {
        userTextfield.text = ""
        passwordTextfield.text = ""
    }
    
    @IBAction func forgotNameButton(_ sender: UIButton) {
        getAlert(title: "Your name is", message: "Alexander")
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        getAlert(title: "Your Password", message: "qaz")
        
    }
    @IBAction func loginButton(_ sender: UIButton) {
        if userTextfield.text == name && passwordTextfield.text == password {
            let helloVC = storyboard?.instantiateViewController(withIdentifier: "HelloViewController") as! HelloViewController
            navigationController?.pushViewController(helloVC, animated: true)
            helloVC.name = userTextfield.text
        } else {
            getAlert(title: "Invalid", message: "Please enter correct your name and password")
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



