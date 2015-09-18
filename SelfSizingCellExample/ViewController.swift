//
//  ViewController.swift
//  SelfSizingCellExample
//
//  Created by 中村祐太 on 2015/09/17.
//  Copyright (c) 2015年 中村祐太. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let models = [
        "MacBook Air",
        "MacBook Pro",
        "iMac",
        "iMac Retina 5Kディスプレイモデル",
        "Mac Pro",
        "Mac mini"
    ]
    
    private let details = [
        "欲しいだけのパワーを、一日中",
        "すべてのピクセルに、さらなるパワーを",
        "性能とデザインを、研ぎ澄ましました。",
        "1,470万のピクセル。それを操り、美しいことをする力。",
        "果てしない想像力のために",
        "とてつもないミニです。"
    ]
    
    func numberOfSectionsInTableView() -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = models[indexPath.row]
        cell.detailTextLabel?.text = details[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

