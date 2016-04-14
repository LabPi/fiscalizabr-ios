//
//  ChangeCity.swift
//  fiscalizaBr
//
//  Created by Warteruzannan on 4/13/16.
//  Copyright © 2016 FiscalizaBr. All rights reserved.
//

import UIKit

class ChangeCity: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backSegue(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil);
    }
}
