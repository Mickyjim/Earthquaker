import UIKit

protocol HomeViewControllerProtocol: AnyObject {
    func display()
}

class HomeViewController: UIViewController, HomeViewControllerProtocol {

    var interactor: HomeInteractorProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.load()
        view.backgroundColor = .red
    }
}

extension HomeViewController {
    func display() {
        
    }
}
