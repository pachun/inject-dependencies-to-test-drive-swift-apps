import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let navigationController = UINavigationController.init(rootViewController: DaysSinceViewController())
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window!.rootViewController = navigationController
        window!.makeKeyAndVisible()
        return true
    }
}
