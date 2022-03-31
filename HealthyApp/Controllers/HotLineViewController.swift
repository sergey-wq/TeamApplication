//
//  HotLineViewController.swift
//  HealthyApp
//
//  Created by Виталий Бобрик on 28.03.22.
//

import UIKit

class HotLineViewController: UIViewController {

    @IBOutlet var viewBackRoundGrey: UIView!
    @IBOutlet var messageTableView: UITableView!
    @IBOutlet var interTextFiled: UITextField!
    @IBOutlet var sendButton: UIButton!
    @IBOutlet var sendYurQuestionLabel: UILabel!
    
    private var itsAnswer = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewBackRoundGrey.layer.cornerRadius = 20
        messageTableView.layer.cornerRadius = 20
        interTextFiled.layer.cornerRadius = 20
        sendYurQuestionLabel.layer.cornerRadius = 20

        messageTableView.rowHeight = CGFloat(80)
        
    }

    @IBAction func putSendButton() {
        exitOutOfHere()
    }
    
    private func exitOutOfHere(){
        itsAnswer = true
        messageTableView.reloadData()
        showAlert(title: "Успешно", message: "Ваше сообщение отправлено")
    }
   
}

// MARK: - HotLineViewController
extension HotLineViewController: UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "message", for: indexPath) as! MessageTableViewCell
        let answer = tableView.dequeueReusableCell(withIdentifier: "messageAnswer", for: indexPath) as! MessageTableViewCell
        
        if indexPath.row == 1 {
            cell.leftLabel.text = "Здравствуйте. Чем могу я помочь?"
            return cell
        }
        
        if itsAnswer && indexPath.row == 2 {
            answer.rightLabel.text = interTextFiled.text
            return answer
        }
     
        return cell
    }
    
}

// MARK: - Alert Controller
extension HotLineViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default){_ in
            self.interTextFiled.text = ""
            self.dismiss(animated: true)
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

//MARK: - UITextFieldDelegate
extension HotLineViewController: UITextFieldDelegate{
    
     func textFieldDidEndEditing(_ textField: UITextField) {
        exitOutOfHere()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
