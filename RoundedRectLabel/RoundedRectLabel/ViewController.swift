//
//  ViewController.swift
//  RoundedRectLabel
//
//  Created by Sid on 16/05/15.
//  Copyright (c) 2015 whackylabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGrayColor()
        
        let roundedRectLabel = RoundedRectLabel()
        roundedRectLabel.text = "No one expects the Spanish Inquisition! Our chief weapon is surprise. Fear and surprise. Two chief weapons, fear, surprise, and ruthless efficiency! Er, among our chief weapons are: fear, surprise, ruthless efficiency, and near fanatical devotion to the Pope! Um, I'll come in again."
        roundedRectLabel.textColor = .blackColor()
        roundedRectLabel.numberOfLines = 0
        roundedRectLabel.textAlignment = .Center
        view.addSubview(roundedRectLabel)
        
        roundedRectLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addConstraint(NSLayoutConstraint(item: roundedRectLabel, attribute: .CenterY, relatedBy: .Equal, toItem: view, attribute: .CenterY, multiplier: 1.0, constant: 0.0))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-[roundedRectLabel]-|", options: NSLayoutFormatOptions(0), metrics: nil, views: ["roundedRectLabel": roundedRectLabel]))
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}

