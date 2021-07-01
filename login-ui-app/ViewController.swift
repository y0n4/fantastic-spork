import UIKit

class ViewController: UIViewController {
    
    var loginMode = true
    var passwordHidden = true
    
    @IBOutlet weak var userOptions: UISegmentedControl!
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var confirmEmailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var confirmEmailLabel: UILabel!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var notificationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordInput.isSecureTextEntry = true
        notificationLabel.isHidden = true
        loginMode = true
        confirmEmailInput.isHidden = true
        confirmEmailLabel.isHidden = true
        signInButton.setTitle("login", for: .normal)
    }

    // hide signup fields with segmented toggle
    @IBAction func switchOption(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            loginMode = true
            notificationLabel.isHidden = true
            confirmEmailInput.isHidden = true
            confirmEmailLabel.isHidden = true
            signInButton.setTitle("login", for: .normal)
        } else {
            loginMode = false
            confirmEmailInput.isHidden = false
            confirmEmailLabel.isHidden = false
            signInButton.setTitle("sign up", for: .normal)
        }
    }

    @IBAction func logout(_ sender: Any) {
    }
    
    // shows password text with the eye toggle
    @IBAction func revealPassword(_ sender: UIButton) {
        if passwordHidden {
            passwordHidden = false
            passwordInput.isSecureTextEntry = false
            sender.setImage(UIImage(systemName: "eye.fill"), for: UIControl.State.normal)
        } else {
            passwordHidden = true
            passwordInput.isSecureTextEntry = true
            sender.setImage(UIImage(systemName: "eye.slash.fill"), for: UIControl.State.normal)
        }
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
    }

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

