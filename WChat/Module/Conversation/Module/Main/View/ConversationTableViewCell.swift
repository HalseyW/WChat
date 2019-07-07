//
//  ConversationTableViewCell.swift
//  WChat
//
//  Created by Wushhhhhh on 2019/7/7.
//  Copyright © 2019 wushhhhhh. All rights reserved.
//

import UIKit
import SnapKit

class ConversationTableViewCell: UITableViewCell {
    let lableUsername = UILabel()
    let lableTime = UILabel()
    let lableRecentContent = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initView()
    }
    
    func initView() {
        lableUsername.textColor = .black
        self.addSubview(lableUsername)
        lableUsername.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.top.equalToSuperview()
        }
        
        lableTime.textColor = .black
        self.addSubview(lableTime)
        lableTime.snp.makeConstraints { (make) in
            make.right.equalToSuperview()
            make.top.equalToSuperview()
        }
        
        lableRecentContent.textColor = .black
        self.addSubview(lableRecentContent)
        lableRecentContent.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.top.equalTo(lableUsername.snp.bottom)
        }
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
