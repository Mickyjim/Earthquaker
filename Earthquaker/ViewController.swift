import UIKit

class ViewController: UIViewController {

var customView: CustomView!

    override func loadView() {
        let view = UIView()
        view.backgroundColor = .red
        self.view = view
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        customView = CustomView(frame: self.view.bounds)
        self.view.addSubview(customView)

    }
}

