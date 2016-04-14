//
//  DetailsAgreementsControllerViewController.swift
//  fiscalizaBr
//
//  Created by Warteruzannan on 4/13/16.
//  Copyright © 2016 FiscalizaBr. All rights reserved.
//

import UIKit

class DetailsAgreementsControllerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backNavegation(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil);
    }
    
}
