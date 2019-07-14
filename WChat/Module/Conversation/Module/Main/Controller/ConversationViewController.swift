//
//  ViewController.swift
//  WChat
//
//  Created by Wushhhhhh on 2019/6/19.
//  Copyright © 2019 wushhhhhh. All rights reserved.
//

import UIKit

class ConversationViewController: UIViewController {
    var conversationListViewModel = ConversationListViewModel()

    let tableView = UITableView()
    var viewEmptyList: UIView!
    var searchController: UISearchController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initView()
        
        conversationListViewModel.delegate = self
        conversationListViewModel.loadConversations()
        
    }

}





