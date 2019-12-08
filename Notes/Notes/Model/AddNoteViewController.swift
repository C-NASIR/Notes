//
//  AddNoteViewController.swift
//  Notes
//
//  Created by Abdinasir Muhumed on 12/6/19.
//  Copyright © 2019 Nasir. All rights reserved.
//

import UIKit
class AddNoteViewController: UIViewController {
    private let appdelegate = UIApplication.shared.delegate as! AppDelegate
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    @IBOutlet weak var titleTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func save(_ sender: Any) {
        guard let title = titleTextField.text else { return }
        saveData(title: title)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    private func saveData (title : String) {
            let note = Note(context: context)
            note.title = title
            note.content = ""
            note.updatedAt = Date()
            note.createdAt = Date()
            appdelegate.saveContext()
        }
    }
