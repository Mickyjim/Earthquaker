import Foundation

protocol HomeInteractorProtocol: AnyObject {
    func load()
    func update()
}

class HomeInteractor: HomeInteractorProtocol {

    var presenter: HomePresenterProtocol

    init(presenter: HomePresenterProtocol) {
        self.presenter = presenter
    }
}

extension HomeInteractorProtocol {
    func load() {

    }

    func update() {

    }
}
