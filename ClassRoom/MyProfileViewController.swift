//
//  MyProfileViewController.swift
//  ClassRoom
//
//  Created by Igor Provorov on 2/9/20.
//  Copyright © 2020 Vadim Zhuk. All rights reserved.
//

import UIKit

class MyProfileViewController: UIViewController {
    @IBOutlet weak var myProfileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var sureNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    var selectedProfile = [Profile]()
    var isMyProfile = Bool()
    var studentNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let studentData = ProfileManager(studentNumber: studentNumber)
        nameLabel.text = studentData.name
        sureNameLabel.text = studentData.surname
        ageLabel.text = studentData.age
        switch studentData.gender {
        case "м":
            genderLabel.text = "male"
        case "ж":
            genderLabel.text = "female"
        default:
            genderLabel.text = "unknown"
        }
    }
}
