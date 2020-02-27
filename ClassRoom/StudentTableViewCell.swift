//
//  StudentTableViewCell.swift
//  ClassRoom
//
//  Created by Igor Provorov on 2/18/20.
//  Copyright © 2020 Vadim Zhuk. All rights reserved.
//

import UIKit

class StudentTableViewCell: UITableViewCell {
    
    static let id = "StudentTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
