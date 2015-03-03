//
//  ViewController.swift
//  swipeViewTest
//
//  Created by Marco F.A. Corzani on 02.03.15.
//  Copyright (c) 2015 Alphaweb. All rights reserved.
//

import UIKit

class ViewControllerID3: UIViewController {
    
    let transitionManager = TransitionManager()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let recognizerLeft: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target:self, action: "swipeLeft:")
        recognizerLeft.direction = .Left
        self.view.addGestureRecognizer(recognizerLeft)
        
        let recognizerRight: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target:self, action: "swipeRight:")
        recognizerRight.direction = .Right
        self.view.addGestureRecognizer(recognizerRight)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func swipeLeft(recognizerLeft: UISwipeGestureRecognizer) {
        
        self.performSegueWithIdentifier("ID3", sender: self)
    }
    
    
    func swipeRight(recognizerRight: UISwipeGestureRecognizer) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // this gets a reference to the screen that we're about to transition to
        let toViewController = segue.destinationViewController as UIViewController
        
        // instead of using the default transition animation, we'll ask
        // the segue to use our custom TransitionManager object to manage the transition animation
        toViewController.transitioningDelegate = self.transitionManager
        
        
        
        
        
    }
    
    
    
}
