//
//  NoteViewControllerdelegate.swift
//  Notes
//
//  Created by Abdinasir Muhumed on 12/7/19.
//  Copyright © 2019 Nasir. All rights reserved.
//
import UIKit
protocol NoteViewControllerProtocol {
    func controller(_ controller : UIViewController, title: String, content : String, indexPath : IndexPath)
}
