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
        self.view.backgroundColor = .white
        
        initNavigationItem()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ConversationTableViewCell.self, forCellReuseIdentifier: "ConversationTableViewCell")
        tableView.estimatedRowHeight = 60
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.size.equalToSuperview()
        }
        
    }
    
    func initNavigationItem() {
        self.navigationItem.title = "消息"
        self.navigationItem.largeTitleDisplayMode = .always
        
        initSeachController()
    }
    
    func initSeachController() {
        searchController = UISearchController(searchResultsController: ConversationSearchResultController())
        searchController.searchResultsUpdater = self
        
        self.navigationItem.searchController = searchController
        self.definesPresentationContext = true
    }
    
    func initEmptyListViews() {
        viewEmptyList = UIView()
        self.view.addSubview(viewEmptyList)
        viewEmptyList.snp.makeConstraints { (make) in
            make.size.equalToSuperview()
        }
        let tvEmptyList = UILabel()
        tvEmptyList.text = "没有消息"
        tvEmptyList.textColor = .black
        self.viewEmptyList.addSubview(tvEmptyList)
        tvEmptyList.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
    }
    
}
