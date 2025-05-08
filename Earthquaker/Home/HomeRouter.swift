import UIKit

protocol HomeRouterProtocol: AnyObject {
    func navigateToDetail()
}

class HomeRouter: HomeRouterProtocol, NavigationRouter {

    typealias Model = Any
    private let navigator: Navigator

    init(navigator: Navigator) {
        self.navigator = navigator
    }
    
    func navigateToDetail() {
        
    }

    static func buildRoute(model: NavigationModel<Model>, with navigation: any Navigator) -> UIViewController {

        let viewController = HomeViewController()
        let router = HomeRouter(navigator: navigation)
        let presenter = HomePresenter(view: viewController, router: router)
        viewController.interactor = HomeInteractor(presenter: presenter)
        return viewController
    }
}

extension HomeRouterProtocol {
    func navigateToDetail() {

    }
}
