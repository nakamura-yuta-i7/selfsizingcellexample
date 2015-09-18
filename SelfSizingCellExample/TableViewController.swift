//
//  TableViewController.swift
//  SelfSizingCellExample
//
//  Created by 中村祐太 on 2015/09/18.
//  Copyright (c) 2015年 中村祐太. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    private let macs = [
        "MacBook Air": "欲しいだけのパワーを、一日中",
        "MacBook Pro": "すべてのピクセルに、さらなるパワーを",
        "iMac": "性能とデザインを、研ぎ澄ましました。",
        "iMac Retina 5Kディスプレイ": "1470万のピクセル。それを操り、美しいことをする力",
    ]
    private var models: [String] = []
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("productCell", forIndexPath: indexPath) as! TableViewCell
        let modelName = models[indexPath.row]
        cell.modelLabel.text = modelName
        cell.descriptionLabel.text = macs[modelName]
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models = [String](macs.keys)
        
        tableView.estimatedRowHeight = 70.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
    }
    
    override func viewDidAppear(animated: Bool) {
        tableView.reloadData()
    }
}
