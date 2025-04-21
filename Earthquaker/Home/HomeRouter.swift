import Foundation

protocol HomeRouterProtocol: AnyObject {
    func navigateToDetail()
}

class HomeRouter: HomeRouterProtocol {

    weak var view: HomeViewController?

    func navigateToDetail() {
        
    }
}

extension HomeRouterProtocol {
    func navigateToDetail() {

    }
}
