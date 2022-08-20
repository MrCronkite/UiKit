//
//  ViewController.swift
//  UiTableView
//
//  Created by admin1 on 19.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    var contats = Source.makeContactsWithGroup()
    
    let tableView: UITableView = .init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        
        tableView.register(ContanctsCell.self, forCellReuseIdentifier: "ContanctsCell")
        
        tableView.dataSource = self
        tableView.delegate = self
    }


}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contats[section].count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Group 1"
        case 1: return "Group 2"
        default: return nil
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContanctsCell", for: indexPath) as? ContanctsCell else { fatalError() }
        
        //cell.config(contact: contats[indexPath.row])
        cell.config(contact: contats[indexPath.section][indexPath.row])
        
        return cell
        
    }
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController {
    func setupTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
