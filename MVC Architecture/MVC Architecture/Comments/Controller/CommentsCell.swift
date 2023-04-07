//
//  CommentsCell.swift
//  MVC Architecture
//
//  Created by Diana on 07/04/2023.
//

import UIKit

class CommentsCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
    }
}
