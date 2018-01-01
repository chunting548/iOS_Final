//
//  RestaurantTableViewController.swift
//  Final
//
//  Created by Chunting on 31/12/2017.
//  Copyright © 2017 chunting. All rights reserved.
//
//  Xcode Version 9.2 (9C40b)

import UIKit

class RestaurantTableViewController: UITableViewController {
    
    var restaurantNames = ["良森。食堂", "TJ House台日未來工房", "Mr.38咖哩東海店", "披薩工廠", "那個鍋", "昭日堂鍋煮", "求求辣年糕", "布達咖啡Cafe Buddha", "莎莎莉朵"]
    
    var restaurantImages = ["良森食堂.jpg", "TJ_House台日未來工房.jpg", "Mr.38咖哩東海店.jpg", "披薩工廠.jpg", "那個鍋.jpg", "昭日堂鍋煮.jpg", "求求辣年糕.jpg", "布達咖啡CafeBuddha.jpg", "莎莎莉朵.jpg"]
    
    var restaurantLocations = ["北區", "西區", "龍井區", "南屯區", "西屯區", "南屯區", "北區", "西屯區", "西區"]
    
    var restaurantTypes = ["日式料理", "日式料理", "日式料理", "義大利料理", "火鍋料理", "火鍋料理", "韓式料理", "咖啡店", "早午餐"]

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
        return restaurantNames.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "RestaurantCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RestaurantTableViewCell
        
        // Configure the cell...
        cell.nameLabel.text = restaurantNames[indexPath.row]
        cell.thumbnailImageView.image = UIImage(named: restaurantImages[indexPath.row])
        cell.locationLabel.text = restaurantLocations[indexPath.row]
        cell.typeLabel.text = restaurantTypes[indexPath.row]
        
        return cell
    }
    
}

