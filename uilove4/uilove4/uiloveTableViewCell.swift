//
//  uiloveTableViewCell.swift
//  uilove4
//
//  Created by Tim on 11/8/17.
//  Copyright © 2017 Tim. All rights reserved.
//

import UIKit

class uiloveTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var elapsedTimeLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!

    func setContent(iconImageView: String, elapsedTimeLabel: String, userNameLabel: String, titleLabel: String) -> Void {
//         set the content values for the cell
        self.iconImageView.image = UIImage(named: iconImageView)
        self.elapsedTimeLabel.text = elapsedTimeLabel
        self.userNameLabel.text = userNameLabel
        self.titleLabel.text = titleLabel

//        self.iconImageView.image = #imageLiteral(resourceName: "phone_03")
//        self.elapsedTimeLabel.text = "1 billion yeras"
//        self.userNameLabel.text = "Me"
//        self.titleLabel.text = "thie is thie  atit el"
    }
}
