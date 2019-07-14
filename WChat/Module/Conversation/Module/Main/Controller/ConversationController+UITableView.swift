//
//  ConversationController+UITableView.swift
//  WChat
//
//  Created by Wushhhhhh on 2019/7/7.
//  Copyright © 2019 wushhhhhh. All rights reserved.
//

import Foundation
import UIKit

extension ConversationViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return conversationListViewModel.conversationsCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ConversationTableViewCell", for: indexPath) as! ConversationTableViewCell
        let conversation = conversationListViewModel.getConversation(at: indexPath.row)
        
        cell.lableUsername.text = conversation.username
        cell.lableTime.text = conversation.time
        cell.lableRecentContent.text = conversation.recentMessage
        
        return cell
    }
}

extension ConversationViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
    }
    
}

