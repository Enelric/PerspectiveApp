//
//  WorkoutPlanViewController.swift
//  Perspective
//
//  Created by Daniel Dunbar on 7/3/16.
//  Copyright © 2016 Perspective Fitness. All rights reserved.
//

import UIKit

class WorkoutPlanViewController: UIViewController {
    @IBOutlet weak var planImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        //Set the image
        planImage.image = UIImage(named: "Image")
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
