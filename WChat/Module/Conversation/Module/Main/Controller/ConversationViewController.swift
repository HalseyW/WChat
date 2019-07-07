//
//  ViewController.swift
//  WChat
//
//  Created by Wushhhhhh on 2019/6/19.
//  Copyright © 2019 wushhhhhh. All rights reserved.
//

import UIKit

class ConversationViewController: UITableViewController {
    var conversations = ["1", "2", "3", "4", "5", "6"]
    var searchController: UISearchController!

    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }

}




