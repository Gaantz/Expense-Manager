//
//  MonthsViewModel.swift
//  Expense Manager
//
//  Created by Cristian Palomino Rivera on 3/12/17.
//  Copyright © 2017 Cristian Palomino Rivera. All rights reserved.
//

import UIKit

class MonthsViewModel: NSObject {
    
    private var months: [MonthItemViewModel]
    
    public var didTapMonth: (() -> Void)?

    override init() {
        months = Months.months.map(MonthItemViewModel.init)
    }
}

extension MonthsViewModel: UITableViewDataSource {
 
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return months.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = months[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: MonthTableViewCell.identifier, for: indexPath) as! MonthTableViewCell
        cell.configure(viewModel: item)
        return cell
    }
}

extension MonthsViewModel: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didTapMonth?()
    }
}
