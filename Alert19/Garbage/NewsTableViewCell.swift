//
//  NewsTableViewCell.swift
//  Alert19
//
//  Created by Andrés Berumen on 03/05/20.
//  Copyright © 2020 Andrés Berumen. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    // MARK: Properties
    @IBOutlet weak var newsPhoto: UIImageView!
    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var newsInfo: UILabel!
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
