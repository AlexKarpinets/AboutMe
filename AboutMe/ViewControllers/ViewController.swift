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
    
    let person = Person.getPerson()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let helloVC = $0 as? HelloViewController {
                helloVC.fullName = userTextfield.text
            } else if let navigationVC = $0 as? UINavigationController {
                let aboutVC = navigationVC.topViewController as! AboutViewController
                aboutVC.person = person
            }
        }
    }
    
    @IBAction func forgotNameButton(_ sender: UIButton) {
        getAlert(title: "Your fullName is", message: "\(person.fullName)")
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        getAlert(title: "Your Password", message: "\(person.password)")
        
    }
    @IBAction func loginButton() {
        if userTextfield.text != person.fullName || passwordTextfield.text != person.password {
            getAlert(title: "Invalid", message: "Please enter correct your fullName and password")
            return
        }
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userTextfield.text = ""
        passwordTextfield.text = ""
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





