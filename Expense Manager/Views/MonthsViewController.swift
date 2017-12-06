//
//  MonthsViewController.swift
//  Expense Manager
//
//  Created by Cristian Palomino Rivera on 3/12/17.
//  Copyright © 2017 Cristian Palomino Rivera. All rights reserved.
//

import UIKit

class MonthsViewController: UIViewController {

    private var viewModel: MonthsViewModel = MonthsViewModel()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        register()
        prepare()
    }
    
    private func register() {
        tableView.register(R.nib.monthTableViewCell)
    }
    
    private func prepare() {
        tableView.dataSource = viewModel
        tableView.delegate = viewModel
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
