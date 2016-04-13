//
//  AgeementViewController.swift
//  fiscalizaBr
//
//  Created by Warteruzannan on 4/12/16.
//  Copyright © 2016 FiscalizaBr. All rights reserved.
//

import UIKit

class AgeementViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableViewAgreements: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableViewAgreements.delegate = self;
        self.tableViewAgreements.dataSource = self;
        // Do any additional setup after loading the view.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("AgreementsTVCell", forIndexPath: indexPath) as!
        AgreementsTVCell;
        cell.lbName.text = "Convênnio \(indexPath.row)";
        cell.lbVirgencia.text = "2008 a 2009";
        cell.lbValor.text = "R$ 3000.000.00"
        return cell;
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
