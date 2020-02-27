//
//  SecondViewController.swift
//  ClassRoom
//
//  Created by Igor Provorov on 2/5/20.
//  Copyright © 2020 Vadim Zhuk. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    var login = ""
    var password = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginLabel.text = login
        passwordLabel.text = password
        
    }
    
    @IBAction func ActionClick(_ sender: Any) {
      //  let viewC = ManualViewController (color: .red, labelText: "text")
       // present(viewC, animated: true, completion: nil)
      
       performSegue(withIdentifier: "naviView", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "naviView",
            let nextViewController = segue.destination as? NavigationViewController {
            nextViewController.title = "Navigation"
        }
    }
    
}


