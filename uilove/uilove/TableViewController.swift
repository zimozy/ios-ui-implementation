//
//  TableViewController.swift
//  uilove
//
//  Created by Tim on 11/6/17.
//  Copyright © 2017 Tim. All rights reserved.
//

import UIKit

struct cellData {
    let iconImage: UIImage!
    let elapsedTime: String!
    let userName: String!
    let postTitle: String!
}

class TableViewController: UITableViewController {
    
    var arrayOfCellData = [cellData]()
    
    override func viewDidLoad() {
        arrayOfCellData = [
            cellData(iconImage: #imageLiteral(resourceName: "phone_03"), elapsedTime: "1 minute", userName: "Mike | Creative Mints", postTitle: "Mechanical Grasshopper"),
            cellData(iconImage: #imageLiteral(resourceName: "weather"), elapsedTime: "21 minutes", userName: "Dash", postTitle: "Assistang App - Weather Module"),
            cellData(iconImage: #imageLiteral(resourceName: "download"), elapsedTime: "2 hours", userName: "Bill S Kenney", postTitle: "Bamboo Branding Wall Piece - not flat")]
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        
        let dataRow = arrayOfCellData[indexPath.row] // access the array once
        cell.iconImageView.image = dataRow.iconImage
        cell.elapsedTimeLabel.text = dataRow.elapsedTime
        cell.userNameLabel.text = dataRow.userName
        cell.postTitleLabel.text = dataRow.postTitle
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 149
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let viewAction = UITableViewRowAction(style: .normal,
                                              title: "View",
                                              handler: {(rowAction, indexPath) in print("viewAction tapped.")}
        )
        viewAction.backgroundColor = UIColor(patternImage: UIImage(named: "eye")!)
        
        let heartAction = UITableViewRowAction(style: .normal,
                                               title: "Heart",
                                               handler: {(rowAction, indexPath) in print("heartAction tapped.")}
        )
        
        let deletAction = UITableViewRowAction(style: .destructive,
                                               title: "Delete",
                                               handler: {(rowAction, indexPath) in print("deleteAction cliced")}
        )

        return [viewAction, heartAction, deletAction]
        
    }
}
