import UIKit

extension ViewController {
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
}
