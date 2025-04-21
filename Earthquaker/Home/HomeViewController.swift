import UIKit

protocol HomeViewControllerProtocol: AnyObject {
    var interacter: HomeInteracterProtocol? { get set }
    func updateView()
}

class HomeViewController: UIViewController, HomeViewControllerProtocol {

    var interacter: HomeInteracterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension HomeViewController {
    func updateView() {
    }
}
