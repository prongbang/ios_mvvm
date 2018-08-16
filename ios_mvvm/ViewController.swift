//
//  ViewController.swift
//  ios_mvvm
//
//  Created by prongbang on 27/7/2561 BE.
//  Copyright © 2561 prongbang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView( _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 50
    }
    
    func tableView( _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "row")
        row.textLabel?.text = "Row = \(indexPath.row)"
        return row
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let repos = UserRepository()
        repos.todos()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

