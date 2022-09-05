//
//  HelloViewController.swift
//  AboutMe
//
//  Created by Karpinets Alexander on 03.09.2022.
//

import UIKit

class HelloViewController: UIViewController {
    @IBOutlet weak var helloLabel: UILabel!
    var fullname: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.text = fullname
        helloLabel.text = "Hello, \(fullname ?? "") !"
    }
    
    @IBAction func logoutButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}

