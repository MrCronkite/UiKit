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
    let editButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupButton()
        
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
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        contats[indexPath.section].remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .left)
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let contact = contats[sourceIndexPath.section].remove(at: sourceIndexPath.row)
        contats[destinationIndexPath.section].insert(contact, at: destinationIndexPath.row)
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(
            title: contats[indexPath.section][indexPath.row].name,
            message: contats[indexPath.section][indexPath.row].description,
            preferredStyle: .alert
        )
        alert.addAction(.init(title: "ok", style: .default, handler: nil))
        present(alert, animated: true)
    }
}

extension ViewController {
    func setupTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
          //  tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension ViewController {
    func setupButton(){
        view.addSubview(editButton)
        editButton.translatesAutoresizingMaskIntoConstraints = false
        editButton.setTitleColor(.black, for: .normal)
        editButton.setTitleColor(.gray, for: .highlighted)
        NSLayoutConstraint.activate([
            editButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            editButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            editButton.topAnchor.constraint(equalTo: tableView.bottomAnchor, constant: 8),
            editButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16)
        ])
        
        editButton.setTitle("edit", for: .normal)
        editButton.addTarget(self, action: #selector(edit(sender:)), for: .touchUpInside)
        
        editButton.layer.cornerRadius = 15
        editButton.layer.borderColor = UIColor.black.cgColor
        editButton.layer.borderWidth = 1
    }
    
    
    @objc func edit(sender: UIButton){
        contats = Source.makeContactsWithGroup()
        tableView.reloadData()
//        tableView.isEditing.toggle()
//        editButton.setTitle(tableView.isEditing ? "end edit" : "edit", for: .normal)
    }
    
}
