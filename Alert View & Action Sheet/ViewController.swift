//
//  ViewController.swift
//  Alert View & Action Sheet
//
//  Created by HARSHID PATEL on 17/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var userNameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        setlogin()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonAction(_ sender: Any) {
        if userNameText.text == "" && passwordText.text == ""{
            showalert(title: "Please Enter Your User Name & Password")
        }
        else if userNameText.text == ""{
            showalert(title: "Please Enter Your Name")
        }
        else if passwordText.text == ""{
            showalert(title: "Please Enter Your Password")
        }
        naviget()
        self.view.endEditing(true)
    }
    
    func showalert(title:String){
        let alert = UIAlertController(title: "Error", message: title, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "Ok", style: .default))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .destructive))
        present(alert, animated: true)
    }
    
    func naviget(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    func setlogin(){
        loginButton.layer.cornerRadius = 15
        loginButton.layer.borderWidth = 3
        loginButton.layer.borderColor = UIColor.black.cgColor
        loginButton.layer.masksToBounds = true
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

