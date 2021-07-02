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
}
