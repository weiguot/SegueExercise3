//
//  SecondViewController.swift
//  SegueExercise3
//
//  Created by Field Employee on 2/16/21.
//

//
//  ViewController.swift
//  SegueExercise3
//
//  Created by Field Employee on 2/16/21.
//

import UIKit

class SecondViewController: UIViewController  {
    
    @IBOutlet weak var secondViewImage: UIImageView!
    @IBOutlet weak var secondViewLabel: UILabel!
   // public var num: Int = 0;
    public var theNum: Int?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The number is \(theNum!)")
        // Do any additional setup after loading the view.
        secondViewImage.image = UIImage(named: "card\(theNum!)")
        secondViewLabel.text = "card\(theNum!)"
        
    }

    
    @IBAction func toHomeButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toHomeViewSegue", sender: self)
    }
    
}

