//
//  ConversationController+View.swift
//  WChat
//
//  Created by Wushhhhhh on 2019/7/7.
//  Copyright © 2019 wushhhhhh. All rights reserved.
//

import UIKit
import SnapKit

extension ConversationViewController {
    func initView() {
        initNavigationItem()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func initNavigationItem() {
        self.navigationItem.title = "Conversation"
        self.navigationItem.largeTitleDisplayMode = .always
        
        initSeachController()
    }
    
    func initSeachController() {
        searchController = UISearchController(searchResultsController: ConversationSearchResultController())
        searchController.searchResultsUpdater = self
        self.navigationItem.searchController = searchController
        
        self.definesPresentationContext = true
    }
    
}
