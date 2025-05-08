import UIKit

protocol Navigator {
    var presenter: UIViewController { get }

    func appendToRoot(_ viewController: UIViewController,
                      animated: Bool)
    func push(_ viewController: UIViewController,
              animated: Bool)
    func set(_ viewControllers: [UIViewController],
             animated: Bool)
    func pop(animated: Bool)
    func popToRoot(animated: Bool)

    func present(_ viewController: UIViewController, animated: Bool)
    func dismiss(animated: Bool)
}

protocol PageNavigator {
    func navigatePrevious()
    func close()
}

class StackNavigator: Navigator {
    let navigation: UINavigationController

    var presenter: UIViewController {
        navigation
    }

    init(
        navigation: UINavigationController
    ) {
        self.navigation = navigation
    }

    func appendToRoot(_ viewController: UIViewController,
                      animated: Bool) {
        var stack: [UIViewController] = []
        if let root = navigation.viewControllers.first {
            stack.append(root)
        }
        stack.append(viewController)
        navigation.setViewControllers(stack, animated: animated)
    }

    func push(_ viewController: UIViewController, animated: Bool) {
        navigation.pushViewController(viewController, animated: animated)
    }

    func set(_ viewControllers: [UIViewController], animated: Bool) {
        navigation.setViewControllers(viewControllers, animated: animated)
    }

    func pop(animated: Bool) {
        navigation.popViewController(animated: animated)
    }

    func popToRoot(animated: Bool) {
        navigation.popToRootViewController(animated: animated)
    }

    func present(_ viewController: UIViewController, animated: Bool) {
        navigation.present(viewController, animated: animated)
    }

    func dismiss(animated: Bool) {
        navigation.dismiss(animated: animated)
    }

    func top() -> UIViewController? {
        navigation.viewControllers.last
    }
}
