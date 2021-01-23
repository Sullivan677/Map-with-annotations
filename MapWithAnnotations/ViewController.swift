import UIKit
import MapKit

class ViewController: UINavigationController, MKMapViewDelegate {

    let mapView = MKMapView()
    let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522), latitudinalMeters: 10000, longitudinalMeters: 10000)
    let TourEiffel = Place(title: "Tour Eiffel", coordinate: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945), info: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.")
    let SacréCoeur = Place(title: "Sacré Coeur", coordinate: CLLocationCoordinate2D(latitude: 48.8867, longitude: 2.3431), info: "The Basilica of the Sacred Heart of Paris, commonly known as Sacré-Cœur Basilica, is a Roman Catholic church and minor basilica in Paris, France, dedicated to the Sacred Heart of Jesus.")
    let ArcDeTriomphe = Place(title: "Arc De Triomphe", coordinate: CLLocationCoordinate2D(latitude: 48.8738, longitude: 2.2950), info: "Arc De Triomphe is one of the most famous monuments in Paris, France, standing at the western end of the Champs-Élysées at the centre of Place Charles de Gaulle, formerly named Place de l'Étoile")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMapView()
        mapView.register(customAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
    }
    
    func setupMapView() {
        view.addSubview(mapView)
        mapView.delegate = self
        mapView.translatesAutoresizingMaskIntoConstraints = false
        mapView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        mapView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        mapView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        mapView.setRegion(region, animated: true)
        mapView.addAnnotation(TourEiffel)
        mapView.addAnnotation(ArcDeTriomphe)
        mapView.addAnnotation(SacréCoeur)
    }
}
