//
//  ArticleTableViewCell.swift
//  Jet2Travel
//
//  Created by Tushar Chavan on 15/06/20.
//  Copyright © 2020 Root. All rights reserved.
//

import Foundation
import UIKit

class ArticleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userIcon: UIImageView!
    
    @IBOutlet weak var userDetailBackgroundView: UIView!
    @IBOutlet weak var userNamelabel: UILabel!
    @IBOutlet weak var articleDetailBackgroundView: UIView!
    @IBOutlet weak var designationLabel: UILabel!
    @IBOutlet weak var timestampLabel: UILabel!
    @IBOutlet weak var articleImageView: UIImageView!
    @IBOutlet weak var articleTitleLabel: UILabel!
    
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var articleLinkLabel: UILabel!
    @IBOutlet weak var articleContentTextView: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
