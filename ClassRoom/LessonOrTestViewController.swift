//
//  LessonOrTestViewController.swift
//  ClassRoom
//
//  Created by Igor Provorov on 2/9/20.
//  Copyright © 2020 Vadim Zhuk. All rights reserved.
//

import UIKit

class LessonOrTestViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let students = StudentsData()
    var studentNumber = 0
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        students.tableView(tableView, numberOfRowsInSection: section)
       
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        students.tableView(tableView, cellForRowAt: indexPath)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        studentNumber = indexPath.row
        performSegue(withIdentifier: "showProfile", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            students.removeStudentFromData(studentNumber: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let student = students.arrayOfStudents[sourceIndexPath.row]
        students.insertStudentArray(student: student, at: destinationIndexPath.row)
        students.removeStudentFromData(studentNumber: sourceIndexPath.row)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as? MyProfileViewController
        destinationVC?.studentNumber = studentNumber
    }
    
}

