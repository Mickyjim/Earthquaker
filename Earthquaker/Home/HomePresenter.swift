import Foundation

protocol HomePresenterProtocol: AnyObject {
    var view: HomeViewControllerProtocol? { get set }
    var router: HomeRouterProtocol? { get set }
}

class HomePresenter: HomePresenterProtocol {
    weak var view: HomeViewControllerProtocol?
    var router: HomeRouterProtocol?
}

extension HomePresenterProtocol {
    
}
