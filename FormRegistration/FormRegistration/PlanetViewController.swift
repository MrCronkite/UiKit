//
//  PlanetViewController.swift
//  FormRegistration
//
//  Created by admin1 on 31.08.22.
//

import UIKit

class PlanetViewController: UIViewController {
    
    let key = "YB7LyF73Zh2MXfhsUObruDZtRbf9JDGIpQ5q2Dpi"
    
    @IBOutlet weak var textField: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    
    let contentApod: [Apod] = []

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func GET(_ sender: Any) {
        guard let url = URL(string: "https://api.nasa.gov/planetary/apod?api_key=\(key)") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let response = response {
                print(response)
            }
            
            guard let data = data else { return }
                print( data )
            
            do{
                let data = try JSONDecoder().decode(Apod.self, from: data)
                DispatchQueue.main.async {
                    self.textField.text = data.explanation
                }
                
                DispatchQueue.global().async {
                    guard let imageUrl = URL(string: data.url) else { return }
                    guard let imageData = try? Data(contentsOf: imageUrl) else { return }
                           
                           DispatchQueue.main.async {
                               self.imageView.image = UIImage(data: imageData)
                           }
                       }
            } catch {
                print(error)
            }
            
        }.resume()
    }
}

