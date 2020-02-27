//
//  SelectedTestOrLessonViewController.swift
//  ClassRoom
//
//  Created by Igor Provorov on 2/10/20.
//  Copyright © 2020 Vadim Zhuk. All rights reserved.
//

import UIKit

class SelectedTestOrLessonViewController: UIViewController {
    let textStr:String
    var questionLabel = UILabel()
    var titleLabel = UILabel()
    var answerTextField = UITextField()
    let titeStr:String
    init(labelText: String ,titleText:String) {
        textStr = labelText
        titeStr = titleText
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view = UIView()
        view.backgroundColor = .white
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = titeStr
        titleLabel.textAlignment = .center
        view.addSubview(titleLabel)
        let margineGuide = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: margineGuide.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: margineGuide.leadingAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 40),
            titleLabel.trailingAnchor.constraint(equalTo: margineGuide.trailingAnchor)
        ])
        
        view.addSubview(questionLabel)
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        questionLabel.centerYAnchor.constraint(equalTo:view.centerYAnchor).isActive = true
        questionLabel.centerXAnchor.constraint(equalTo:view.centerXAnchor).isActive = true
        questionLabel.text = textStr
        view.addSubview(answerTextField)
        answerTextField.placeholder = "Some answer"
        answerTextField.textAlignment = .center
        answerTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            answerTextField.topAnchor.constraint(equalTo: questionLabel.topAnchor, constant: 20),
            answerTextField.leadingAnchor.constraint(equalTo: margineGuide.leadingAnchor),
            answerTextField.heightAnchor.constraint(equalToConstant: 40),
            answerTextField.trailingAnchor.constraint(equalTo: margineGuide.trailingAnchor)
        ])
        self.view = view
    }
}
