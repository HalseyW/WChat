//
//  ConversationListViewModel.swift
//  WChat
//
//  Created by Wushhhhhh on 2019/7/14.
//  Copyright © 2019 wushhhhhh. All rights reserved.
//

import Foundation

class ConversationListViewModel {
    weak var delegate: ConversationListViewModelProtocol?
    var conversations = Array<Conversation>() {
        didSet {
            self.delegate?.emptyListViews(isHidden: !conversations.isEmpty)
        }
    }
    
    var conversationsCount: Int {
        return conversations.count
    }
    
    func getConversation(at index: Int) -> Conversation {
        return conversations[index]
    }
    
    func loadConversations() {
        conversations.removeAll()
    }
    
}
