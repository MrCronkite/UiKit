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
    
    func alertView(title: String, message: String, style: UIAlertController.Style ){
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        let alertAction = UIAlertAction(title: "ok", style: .default)
        
        present(alert, animated: true)
        alert.addAction(alertAction)
    }
    
}


extension ViewController: UITableViewDataSource {
    
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

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //alertView(title: "hello", message: "\(indexPath.row)", style: .actionSheet)
        
        let storyboard = UIStoryboard(name: "secondStoryboard", bundle: nil)
        guard let vc2 = storyboard.instantiateViewController(withIdentifier: "VC2") as?
                SecondViewController else { return }
        vc2.index = "\(indexPath.row)"
        show(vc2, sender: nil)
        
        
        
    }
}
