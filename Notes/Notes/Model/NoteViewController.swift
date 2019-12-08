//
//  NoteViewController.swift
//  Notes
//
//  Created by Abdinasir Muhumed on 12/6/19.
//  Copyright © 2019 Nasir. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!
    var delegate : NoteViewControllerProtocol!
    var indexPath : IndexPath!
    var note : Note!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        titleTextField.text = note.title
        contentTextView.text = note.content
    }
    
    @IBAction func save(_ sender: Any) {
        guard let title = titleTextField.text else { return }
        guard let content = contentTextView.text else { return }
        guard let delegate = delegate else { return }
        guard let indexPath = indexPath else { return }
        delegate.controller(self, title: title, content: content, indexPath: indexPath)
        navigationController?.popViewController(animated: true)
    }
}
