//
//  ViewController.swift
//  ColectionView
//
//  Created by admin1 on 21.01.23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        let collectionCellNib = UINib(nibName: "ButtonCell", bundle: nil)
        collectionView.register(collectionCellNib, forCellWithReuseIdentifier: "ButtonCell")
        let commonCellNib = UINib(nibName: "CommonCell", bundle: nil)
        collectionView.register(commonCellNib, forCellWithReuseIdentifier: "CommonCell")
    }
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.item {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ButtonCell", for: indexPath) as! ButtonCell
            cell.configure()
            return cell
            
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CommonCell", for: indexPath) as! CommonCell
            cell.configure(icon: UIImage(systemName: "figure.cooldown"), text: "Sell")
            return cell
        }
    }
    
    
}

