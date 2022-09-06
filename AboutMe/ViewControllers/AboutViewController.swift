//
//  AboutViewController.swift
//  AboutMe
//
//  Created by Karpinets Alexander on 06.09.2022.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var aboutLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "\(person.image)")
        aboutLabel.text = person.bioInfo
    }
}
