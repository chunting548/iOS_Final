//
//  AttractionTableViewController.swift
//  Final
//
//  Created by Chunting on 30/12/2017.
//  Copyright © 2017 chunting. All rights reserved.
//
//  Xcode Version 9.2 (9C40b)

import UIKit

class AttractionTableViewController: UITableViewController {
    
    var attractionNames = ["高美濕地", "彩虹眷村", "東海路思義教堂", "台中國家歌劇院", "逢甲商圈", "一中街", "東海商圈", "科博館", "勤美術館"]
    
    var attractionImages = ["高美濕地.jpg", "彩虹眷村.jpg", "路思義教堂.jpg", "台中歌劇院.jpg", "逢甲商圈.jpg", "一中街.jpg", "東海商圈.jpg", "科博館.jpg", "勤美術館.jpg"]
    
    var attractionLocations = ["清水區", "南屯區", "西屯區", "西屯區", "西屯區", "北區", "龍井區", "北區", "西區"]
    
    var attractionTypes = ["自然與公園", "景點與地標", "景點與地標", "景點與地標", "商圈", "商圈", "商圈", "博物館", "博物館"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return attractionNames.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "AttractionCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! AttractionTableViewCell
        
         //Configure the cell...
        cell.nameLabel.text = attractionNames[indexPath.row]
        cell.thumbnailImageView.image = UIImage(named: attractionImages[indexPath.row])
        cell.locationLabel.text = attractionLocations[indexPath.row]
        cell.typeLabel.text = attractionTypes[indexPath.row]
        
        return cell
}

}
