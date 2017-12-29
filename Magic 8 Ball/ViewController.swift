//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Oludemilade Raji on 12/29/17.
//  Copyright © 2017 Oludemilade Raji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballsArray = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    func newBallImage() {
        randomBallNumber = Int (arc4random_uniform(4))
        imageView.image = ballsArray[randomBallNumber]
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

