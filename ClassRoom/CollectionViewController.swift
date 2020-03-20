//
//  CollectionViewController.swift
//  ClassRoom
//
//  Created by Igor Provorov on 3/20/20.
//  Copyright © 2020 Vadim Zhuk. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {

   @IBOutlet weak var studentLabel: UILabel!
      
      var studentCollectionView: UICollectionView!
      
      let cells: [Profile] = {
          let students = StudentsData()
          return students.arrayOfStudents
      }()
      override func viewDidLoad() {
          super.viewDidLoad()
       }
}
