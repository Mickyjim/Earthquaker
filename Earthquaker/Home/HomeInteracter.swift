import Foundation

protocol HomeInteracterProtocol: AnyObject {
    var presenter: HomePresenterProtocol? { get set }
    func fetchData()
}

class HomeInteracter: HomeInteracterProtocol {
    var presenter: HomePresenterProtocol?
    
    func fetchData() {
        
    }
}

extension HomeInteracterProtocol {
    func fetchData() {
        
    }
}
