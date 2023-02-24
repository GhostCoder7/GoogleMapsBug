//
//  ViewController.swift
//  MapsBug
//
//  Created by Jarrad cutting on 2/21/23.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController,GMSMapViewDelegate {

    
    public let MAP_ID = "880b2ca14a9a0518"; 
    @IBOutlet var mapViewContainer:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Initiate map view and camera
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        
        
        //Normal map
        let mapView = GMSMapView.map(withFrame: mapViewContainer.frame, camera: camera)
        
        //Styled map
        //let mapView = GMSMapView(frame: mapViewContainer.frame, mapID: GMSMapID(identifier: MAP_ID), camera: camera)
        
        //Assign map to view
        view = mapView;
        
        //Set map view delegate to handle changes
        mapView.delegate = self;

        //Add map view to container
        mapViewContainer.addSubview(mapView);
        
        
    }

    
    
    public func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
        
        return true;
    }
    
    

    
    
    public func mapView(_ mapView: GMSMapView, didTapAt coordinate: CLLocationCoordinate2D) {
        
    }
    

    public func mapView(_ mapView: GMSMapView, didChange position: GMSCameraPosition) {
        
        
    
    }
    

    public func mapView(_ mapView: GMSMapView, idleAt position: GMSCameraPosition) {
        
     
    }

}

