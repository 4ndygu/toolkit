//
//  OrgPageViewController.swift
//  o_toolkit
//
//  Created by Student on 2/25/17.
//  Copyright © 2017 wow. All rights reserved.
//

import UIKit
import GoogleMaps

class OrgPageViewController: UIViewController {

    @IBOutlet weak var mapViewHolder: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let camera = GMSCameraPosition.camera(withLatitude: 1.285, longitude: 103.848, zoom: 12)
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        self.mapViewHolder = mapView

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
