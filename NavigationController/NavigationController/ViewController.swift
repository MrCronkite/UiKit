//
//  ViewController.swift
//  NavigationController
//
//  Created by admin1 on 26.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    let content = Source.makeContact()
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifire)
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        content.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: CustomTableViewCell.identifire,
            for: indexPath) as? CustomTableViewCell else { fatalError() }
        
        cell.config(contact: content[indexPath.row])
        
        return cell
    }
    
    
}
