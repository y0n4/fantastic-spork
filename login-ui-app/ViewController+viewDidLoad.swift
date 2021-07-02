import UIKit

extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordInput.isSecureTextEntry = true
        notificationLabel.isHidden = true
        loginMode = true
        confirmEmailInput.isHidden = true
        confirmEmailLabel.isHidden = true
        signInButton.setTitle("login", for: .normal)
    }
}
