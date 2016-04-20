//
//  RESpinner.swift
//  RESpinner
//
//  Created by Deepak on 20/04/16.
//  Copyright © 2016 Requiss. All rights reserved.
//
//  Usage:
//
//  # Show Circular View
//  RESpinner.shared.show(self.view)
//
//  # Show Default Activity View
//  RESpinner.shared.showActivity(self.view)
//
//  # Hide
//  RESpinner.shared.hide()
//

import UIKit
import Foundation

public class RESpinner {
    
    var overlayView = UIView()
    var activityIndicator = UIActivityIndicatorView()
    
    class var shared: RESpinner {
        struct Static {
            static let instance: RESpinner = RESpinner()
        }
        return Static.instance
    }
    
    public let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRectMake(0, 0, 64.0, 64.0))
        imageView.alpha = 1.0
        imageView.clipsToBounds = true
        imageView.contentMode = .Center
        return imageView
    }()
    
    /* Spinner overlay with default UIActivityIndicatorView */
    
    public func showActivity(view: UIView!) {
        overlayView = UIView(frame: UIScreen.mainScreen().bounds)
        overlayView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.WhiteLarge)
        activityIndicator.center = overlayView.center
        overlayView.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        view.addSubview(overlayView)
    }
    
    /* Spinner overlay with custom loading view */
    
    public func show(view: UIView!) {
        overlayView = UIView(frame: UIScreen.mainScreen().bounds)
        overlayView.backgroundColor = UIColor.clearColor()
        imageView.image = UIImage(named: "progress_circular")
        imageView.center = overlayView.center
        overlayView.addSubview(imageView)
        imageView.startRotating()
        view.addSubview(overlayView)
    }
    
    public func hide() {
        activityIndicator.stopAnimating()
        imageView.removeFromSuperview()
        overlayView.removeFromSuperview()
    }
    
}