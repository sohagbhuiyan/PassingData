import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func saveBtn(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC {
            vc.text = textField.text // Pass data
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        } else {
            print("Error: SecondVC not found in storyboard.")
        }
    }
}
