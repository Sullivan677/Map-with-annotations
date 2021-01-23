import UIKit
import MapKit
class DetailsViewController: UINavigationController {

    var place: Place!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.title = "\(place.title ?? "")"
    }
    
    @objc func dismissSelf() {
        dismiss(animated: true)
    }
    


}

