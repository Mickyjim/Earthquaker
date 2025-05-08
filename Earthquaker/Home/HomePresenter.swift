import Foundation

protocol HomePresenterProtocol: AnyObject {
    func show()
    func showUpdate()
}

class HomePresenter: HomePresenterProtocol {

    weak var view: HomeViewControllerProtocol!
    var router: HomeRouterProtocol

    init(
        view: HomeViewControllerProtocol,
        router: HomeRouterProtocol
    ) {
        self.view = view
        self.router = router
    }
}

extension HomePresenterProtocol {
    func show() {

    }

    func showUpdate() {

    }
}
