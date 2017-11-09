//
//  ViewController.swift
//  uilove4
//
//  Created by Tim on 11/8/17.
//  Copyright © 2017 Tim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var dataBase: [Dictionary<String, String>] = []
    
    override func viewDidLoad() {
        // create our data
        dataBase = [
            ["icon": "phone_03", "elapsedTime": "1 minute", "user": "Mike | Creative Mints", "title": "Mechanical Grasshopper"],
            ["icon": "weather", "elapsedTime": "21 minutes", "user": "Dash", "title": "Assistant App - Weather Module"],
            ["icon": "phone_03", "elapsedTime": "50 minutes", "user": "Somebody", "title": "Announcement about upcoming web agency"],
            ["icon": "download", "elapsedTime": "2 hours", "user": "Bill S Kenney", "title": "Bamboo Branding Wall Piece - not flat"]
        ]
    }
    
    // tblview gets number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataBase.count
    }

    // tbl view gets height of cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72.5
    }

    //tbl view creates a cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "uiloveTableViewCellIdentifyer", for: indexPath) as! uiloveTableViewCell
        
        // get the current DB entry
        let currentEntry = dataBase[indexPath.row]
        
        // set the post content
        cell.setContent(iconImageView: currentEntry["icon"]!, elapsedTimeLabel: currentEntry["elapsedTime"]!, userNameLabel: currentEntry["user"]!, titleLabel: currentEntry["title"]!)
//        cell.setContent(iconImageView: "phone_03", elapsedTimeLabel: "Hello", userNameLabel: "hi", titleLabel: "what is up")
        
        //return the cell
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let viewAction = UITableViewRowAction(style: .normal, title: "", handler: { (rowAction, path) -> Void in print("viewAction tapped") } )
        let likeAction = UITableViewRowAction(style: .normal, title: "", handler: { (rowAction, path) -> Void in print("likeAction tapped") } )
        let deleteAction = UITableViewRowAction(style: .normal, title: "", handler: { (rowAction, path) -> Void in print("deleteAction tapped") } )

        //viewAction.backgroundColor = UIColor(patternImage: UIImage(named: "eye")!)
//        (UIButton.appearance(whenContainedInInstancesOf: [UIView.self])).setImage(UIImage(named: "ic_delete"), for: .normal)
        var buttonReference = (UIButton.appearance(whenContainedInInstancesOf: [UIView.self]))

        buttonReference.setImage(UIImage(named: "eye"), for: .normal)
        
        //.setImage(UIImage(named: "eye"), for: .normal)
        
        return [viewAction]
    }

}

