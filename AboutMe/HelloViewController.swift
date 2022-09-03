//
//  HelloViewController.swift
//  AboutMe
//
//  Created by Karpinets Alexander on 03.09.2022.
//

import UIKit

class HelloViewController: UIViewController {
    @IBOutlet weak var helloLabel: UILabel!
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.text = name
        helloLabel.text = "Hello, \(name ?? "") !"
    }
    
    @IBAction func logoutButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}

