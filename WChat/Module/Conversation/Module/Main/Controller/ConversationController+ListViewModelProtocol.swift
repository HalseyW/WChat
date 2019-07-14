//
//  ConversationController+ViewModelProtocol.swift
//  WChat
//
//  Created by Wushhhhhh on 2019/7/14.
//  Copyright © 2019 wushhhhhh. All rights reserved.
//

import Foundation

extension ConversationViewController: ConversationListViewModelProtocol {
    func emptyListViews(isHidden: Bool) {
        if viewEmptyList == nil {
            initEmptyListViews()
        }
        viewEmptyList.isHidden = isHidden
        tableView.isHidden = !viewEmptyList.isHidden
    }
}
