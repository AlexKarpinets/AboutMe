//
//  HelloViewController.swift
//  AboutMe
//
//  Created by Karpinets Alexander on 03.09.2022.
//

import UIKit

class HelloViewController: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
    
    var fullName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.text = fullName
        helloLabel.text = "Hello, \(fullName ?? "Alexander Karpinets")!"
    }
}

