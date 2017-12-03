//
//  MonthsViewModel.swift
//  Expense Manager
//
//  Created by Cristian Palomino Rivera on 3/12/17.
//  Copyright © 2017 Cristian Palomino Rivera. All rights reserved.
//

import UIKit

class MonthsViewModel: NSObject {

    private var months: [String]
    
    override init() {
        
    }
}

extension MonthsViewModel: UITableViewDataSource {
 
    func numberOfSections(in tableView: UITableView) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}

extension MonthsViewModel: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
}
