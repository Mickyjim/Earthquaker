import UIKit

enum NavigationModel<T> {
    case none
    case model(T)
}

protocol NavigationRouter {
    associatedtype Model
    static func buildRoute(model: NavigationModel<Model>,
                           with navigation: Navigator) -> UIViewController
}
