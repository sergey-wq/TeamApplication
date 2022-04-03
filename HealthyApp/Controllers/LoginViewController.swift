//
//  LoginViewController.swift
//  HealthyApp
//
//  Created by Daniil on 26.03.22.
//

import UIKit


class LoginViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    
    private let user = Person.getPersonData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: .green, bottomColor: .blue)
        logInButton.layer.cornerRadius = logInButton.bounds.height / 3
    }
    
    //MARK: - Prepare for segue method
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Подготовка перехода на следующий экран
    }
    
    
    @IBAction func loginButtonPressed() {
        guard
            userName.text == user.login,
            userPassword.text == user.password
        else {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password")
            return
        }
    }
    
    @IBAction func forgotNameButtonPressed() {
        showAlert(title: "Oops!", message: "Your name is \(user.login) 😉")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(title: "Oops!", message: "Your password is \(user.password) 😉")
    }
    
    //MARK: - unwind action
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        // Возврат
    }
}

//MARK: - Extensions

extension LoginViewController {
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {_ in
            self.userPassword.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userName {
            userPassword.becomeFirstResponder()
        } else {
            loginButtonPressed()
            //            performSegue(withIdentifier: "", sender: nil)
        }
        return true
    }
}

