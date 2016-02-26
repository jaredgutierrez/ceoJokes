//
//  PictureViewController.swift
//  ceoJokes
//
//  Created by Jared Gutierrez on 2/25/16.
//  Copyright © 2016 Jared Gutierrez. All rights reserved.
//

import UIKit

class PictureViewController: UIViewController {
    var imageName = ""
    
    @IBOutlet weak var productpic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        productpic.image = UIImage(named: imageName)
        
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
