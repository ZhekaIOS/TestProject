//
//  tableVC.swift
//  TestWork
//
//  Created by Евгений Ковалевский on 10.02.2018.
//  Copyright © 2018 RockSoft. All rights reserved.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {
    
    //Outlests
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var signUpOutlet: UIButton!
    @IBOutlet weak var logInOutlet: UIButton!
    
    //MARK: Action for get text
    @IBAction func getForecast(_ sender: UIBarButtonItem) {
        labelOne.text = tekst
        parseVC().getText()
    }
   
    
    //MARK: Action for registration
    @IBAction func signUpButton(_ sender: UIButton) {
        guard let url = URL(string: "https://apiecho.cf/api/signup/") else {return}
        let parametrs = ["name": self.name.text!,"email": self.email.text!,"password": self.password.text!]
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parametrs, options: []) else {return}
        request.httpBody = httpBody
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            if let response = response {
                print(response)
            }
            guard let data = data else {return}
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
                
            } catch {
                print(error)
            }
            }.resume()
        self.infoLabel.text = "Registration completed successfully"
        //create Animations
        UIView.animate(withDuration: 0.45,
                       animations: {
                        self.signUpOutlet.transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        },
                       completion: { _ in
                        UIView.animate(withDuration: 0.45) {
                            self.signUpOutlet.transform = CGAffineTransform.identity
                        }
        })
    }
    
    //MARK: Action for login
    @IBAction func logIn(_ sender: UIButton) {
        guard let url = URL(string: "https://apiecho.cf/api/login/") else {return}
        let parametrs = ["email":self.email.text!,"password":self.password.text!]
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parametrs, options: []) else {return}
        request.httpBody = httpBody
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            if let response = response {
                print(response)
            }
            guard let data = data else {return}
            do {
                let  json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            } catch {
                print(error)
            }
            }.resume()
        self.infoLabel.text = "Ur log in was successfully"
        //create Animations
        UIView.animate(withDuration: 0.45,
                       animations: {
                        self.logInOutlet.transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        },
                       completion: { _ in
                        UIView.animate(withDuration: 0.45) {
                            self.logInOutlet.transform = CGAffineTransform.identity
                        }
        })
    }
    // MARK: Hide keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}


