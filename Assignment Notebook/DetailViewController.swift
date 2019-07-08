//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by Zhou, Alexander on 7/8/19.
//  Copyright © 2019 Alex Zhou. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var courseTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    var detailItem: Assignment? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    
    func configureView(){
        //Update the user interface for the detail item
        if let assignment = self.detailItem {
            if titleTextField != nil {
                titleTextField.text = assignment.title
                courseTextField.text = assignment.course
                dueDateTextField.text = assignment.dueDate
                descriptionTextField.text = assignment.description
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let assignment = self.detailItem {
            assignment.title = titleTextField.text!
            assignment.course = courseTextField.text!
            assignment.dueDate = dueDateTextField.text!
            assignment.description = descriptionTextField.text!
        }
    }
}

