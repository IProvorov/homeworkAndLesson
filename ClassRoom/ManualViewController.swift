//
//  ManualViewController.swift
//  ClassRoom
//
//  Created by Igor Provorov on 2/7/20.
//  Copyright © 2020 Vadim Zhuk. All rights reserved.
//

import UIKit

class ManualViewController: UIViewController {
    let backColor: UIColor
    let textStr: String
    var titleLabel = UILabel()
    init(color: UIColor, labelText: String) {
        backColor = color
        textStr = labelText
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = backColor
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.text = textStr
    }
}
