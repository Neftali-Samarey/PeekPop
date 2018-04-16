//
//  ViewController.swift
//  PeekPop
//
//  Created by Neftali Samarey on 11/24/17.
//  Copyright © 2017 Neftali Samarey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerPreviewingDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if (traitCollection.forceTouchCapability == UIForceTouchCapability.available) {
            registerForPreviewing(with: self, sourceView: view)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Delegates
    
    // Handle the Previewing
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        // Needs to return a UIViewController
        let previewController = PreviewViewController()
        return previewController
    }
    
    // Handle the transition
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
        let final = FinalViewController()
        show(final, sender: self)
    }

}

