//
//  MonthTableViewCell.swift
//  Expense Manager
//
//  Created by Cristian Palomino Rivera on 3/12/17.
//  Copyright © 2017 Cristian Palomino Rivera. All rights reserved.
//

import UIKit

class MonthTableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    
    public static var identifier: String {
        return R.reuseIdentifier.monthTableViewCell.identifier
    }
    
    public func configure(viewModel: MonthItemViewModel) {
        lblName.text = viewModel.name
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
