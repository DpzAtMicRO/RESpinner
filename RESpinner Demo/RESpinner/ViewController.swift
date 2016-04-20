//
//  ViewController.swift
//  RESpinner
//
//  Created by Deepak on 20/04/16.
//  Copyright © 2016 Requiss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    MARK: Outlets
    @IBOutlet weak var showButton: UIButton!
    @IBOutlet weak var showActivityButton: UIButton!
    @IBOutlet weak var hideButton: UIButton!
    
//    MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    MARK: Actions
    
    @IBAction func show(sender: UIButton) {
        // show spinner with custom loading view and hide after 2 sec delay
        RESpinner.shared.show(self.view)
        delay(2.0) {
            RESpinner.shared.hide()
        }
    }
    
    @IBAction func showActivity(sender: UIButton) {
        // show spinner with default activity view and hide after 2 sec delay
        RESpinner.shared.showActivity(self.view)
        delay(2.0) {
            RESpinner.shared.hide()
        }
    }
    
    @IBAction func hide(sender: UIButton) {
        
    }
    
//    MARK: Custom Delay Function
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }


}

