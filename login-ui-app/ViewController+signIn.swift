import UIKit

extension ViewController {
    @IBAction func signIn(_ sender: Any) {
        let email = emailInput.text
        let confirmEmail = confirmEmailInput.text
        let password = passwordInput.text
        
        if loginMode {
            
        } else {
            notificationLabel.isHidden = false
            if (email == "" || confirmEmail == "" || password == "") {
                notificationLabel.text = "field cannot be empty"
                notificationLabel.textColor = .systemOrange
            } else if email != confirmEmail {
                notificationLabel.text = "emails do not match"
                notificationLabel.textColor = .systemRed
            } else {
                notificationLabel.text = "success"
                notificationLabel.textColor = .systemGreen
                // clear inputs
                emailInput.resignFirstResponder()
                confirmEmailInput.resignFirstResponder()
                passwordInput.resignFirstResponder()
                emailInput.text = ""
                confirmEmailInput.text = ""
                passwordInput.text = ""
            }
        }
    }
}
