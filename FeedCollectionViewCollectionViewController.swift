//
//  FeedCollectionViewCollectionViewController.swift
//  ceoJokes
//
//  Created by Jared Gutierrez on 2/24/16.
//  Copyright © 2016 Jared Gutierrez. All rights reserved.
//

import UIKit

private let reuseIdentifier = "myCell"

class FeedCollectionViewCollectionViewController: UICollectionViewController {

    var names = ["Steve Jobs", "Tim Cook", "Bill Gates"]
    
    var jokes = ["How many programmers does it take to change a light bulb? None. It's a hardware problem.", "Why was the JavaScript developer sad? Because he didn't Node how to Express himself.", "Why did the developer go broke? Because he used up all his Cache. "]
    
    var picture = ["stevejobs","timcook","billgates"]
    
    var products = [["iphone","ipad","Macbook","Macbook Pro","Ipod"],["Apple Watch","Apple TV"], ["Microsoft", "PC"]]
    
    var productpictures = [["iphone" ,"ipad","macbook","macbookpro","ipod"],["applewatch","appletv"],["microsoft","pc"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        
//        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier) == "ToTableview" {
            let vc  = segue.destinationViewController as! ProductsViewControllerTableViewController
            let row = (sender as! NSIndexPath).item
            let invention = products[row]
            vc.inventions = invention
            let inventionpicture = productpictures[row]
            vc.inventionpictures = inventionpicture
            
        
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return names.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! FeedCollectionViewCell
    
        // Configure the cell
    
        cell.CeoName.text = names[indexPath.row]
        cell.CeoJoke.text = jokes[indexPath.row]
        cell.CeoPicture.image = UIImage(named: picture[indexPath.row])
        
        return cell
    }
    
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("ToTableview", sender: indexPath)
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
