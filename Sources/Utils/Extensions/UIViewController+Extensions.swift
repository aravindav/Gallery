import UIKit

extension UIViewController {

  func g_addChildController(_ controller: UIViewController) {
    addChild(controller)
    view.addSubview(controller.view)
    controller.didMove(toParent: self)

    controller.view.g_pinEdges()
  }

  func g_removeFromParentController() {
    willMove(toParent: nil)
    view.removeFromSuperview()
    removeFromParent()
  }
}


extension UIColor {

    static var backgroundColor: UIColor {
        if #available(iOS 13, *) {
            return systemBackground
        } else {
            return white
        }
    }

    static var labelColor: UIColor {
        if #available(iOS 13, *) {
            return label
        } else {
            return black
        }
    }

    static var blueColor: UIColor {
        if #available(iOS 13, *) {
            return systemBlue
        } else {
            return UIColor(red: 40/255, green: 170/255, blue: 236/255, alpha: 1)
        }
    }
}
