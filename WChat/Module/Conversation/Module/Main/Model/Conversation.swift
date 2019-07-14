//
//  Conversation.swift
//  WChat
//
//  Created by Wushhhhhh on 2019/7/7.
//  Copyright © 2019 wushhhhhh. All rights reserved.
//

import Foundation

struct Conversation {
    var id: UUID
    var username: String
    var recentMessage: String
    var time: String
    
    init(username: String, recentMessage: String, time: String) {
        self.id = UUID()
        self.username = username
        self.recentMessage = recentMessage
        self.time = time
    }
}
