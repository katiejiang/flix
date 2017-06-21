//
//  MovieCell.swift
//  Flix
//
//  Created by Katie Jiang on 6/21/17.
//  Copyright © 2017 Katie Jiang. All rights reserved.
//
import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
