import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    var text: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let receivedText = text {
            textLabel.text = receivedText
        }
    }
    
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true)
    }
}
