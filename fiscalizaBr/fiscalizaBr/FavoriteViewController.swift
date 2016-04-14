//
//  FavoriteViewController.swift
//  fiscalizaBr
//
//  Created by Warteruzannan on 4/12/16.
//  Copyright © 2016 FiscalizaBr. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func orderByValues(sender: AnyObject) {
        let alert = UIAlertController(title: "Odernar por", message: "", preferredStyle: UIAlertControllerStyle.Alert);
        alert.addAction(UIAlertAction(title: "Valor", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) -> Void in }))
        alert.addAction(UIAlertAction(title: "Virgência", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) -> Void in }))
        self.presentViewController(alert, animated: true) { () -> Void in}
    }
    @IBAction func chageCity(sender: AnyObject) {
        self.performSegueWithIdentifier("FavoriteEditLocalSegue", sender: self);
    }
    
}
