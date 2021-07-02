import UIKit

extension ViewController {
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
}
