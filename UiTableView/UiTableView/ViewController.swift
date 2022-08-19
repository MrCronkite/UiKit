//
//  ViewController.swift
//  UiTableView
//
//  Created by admin1 on 19.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    var contats = Source.makeContacts()
    
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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contats.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContanctsCell", for: indexPath) as? ContanctsCell else { fatalError() }
        
        cell.config(contact: contats[indexPath.row])
        
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
