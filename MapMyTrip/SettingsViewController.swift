//
//  SettingsViewController.swift
//  MapMyTrip
//
//  Created by Alex on 13/04/2020.
//  Copyright © 2020 Alex Sykes. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    var defaults : UserDefaults!
    @IBOutlet weak var modeSelect: UISegmentedControl!
    var mainViewController: ViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        defaults = UserDefaults.standard
        
        modeSelect.selectedSegmentIndex = defaults.integer(forKey: "travelMode")

        // Do any additional setup after loading the view.
    }
    
    // MARK: Actions
    
    // Save mode on change
    @IBAction func modeChanged(_ sender: UISegmentedControl, forEvent event: UIEvent) {
        let mode: Int  = modeSelect.selectedSegmentIndex
        defaults.set(mode, forKey: "travelMode")
        mainViewController?.onReturnFromSettings(mode: mode)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
//    @IBAction func save(_ sender: UIBarButtonItem) {
//        //
//        let mode: Int  = modeSelect.selectedSegmentIndex
//        defaults.set(mode, forKey: "travelMode")
//    }
    
}