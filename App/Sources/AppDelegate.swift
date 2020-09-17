import UIKit
import SAMKeychain

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // This is just a test to see if the SAMKeychain import works.
        //
        // The code should compile, and you should see the print in the STDOUT
        //logs of the bazel run command
        print("Test SAMKeychain access result: \(String(describing: SAMKeychain.password(forService: "test", account: "test")))")
        return true
    }

    // func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    //     return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    // }
}
