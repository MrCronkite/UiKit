//
//  PlanetViewController.swift
//  FormRegistration
//
//  Created by admin1 on 31.08.22.
//

import UIKit

class PlanetViewController: UIViewController {
    
    let key = "YB7LyF73Zh2MXfhsUObruDZtRbf9JDGIpQ5q2Dpi"

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
                let json =  try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            } catch {
                print(error)
            }
            
        }.resume()
    }
}

