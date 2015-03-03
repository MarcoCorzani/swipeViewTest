//
//  ViewController.swift
//  swipeViewTest
//
//  Created by Marco F.A. Corzani on 02.03.15.
//  Copyright (c) 2015 Alphaweb. All rights reserved.
//

import UIKit

class ViewControllerID1: UIViewController {

    let transitionManager = TransitionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let recognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target:self, action: "swipeLeft:")
        recognizer.direction = .Left
        self.view.addGestureRecognizer(recognizer)
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func swipeLeft(recognizer: UISwipeGestureRecognizer) {
    
        self.performSegueWithIdentifier("ID1", sender: self)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // this gets a reference to the screen that we're about to transition to
        let toViewController = segue.destinationViewController as UIViewController
        
        // instead of using the default transition animation, we'll ask
        // the segue to use our custom TransitionManager object to manage the transition animation
        toViewController.transitioningDelegate = self.transitionManager
        
        
    
    }



}

