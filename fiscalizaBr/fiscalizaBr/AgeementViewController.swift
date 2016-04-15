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
    let listAgreementsName = ["Exposição Goiana","Reforma Igreja ","Reforma Colégio ","Convênio da Paz"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableViewAgreements.delegate = self;
        self.tableViewAgreements.dataSource = self;
        // Do any additional setup after loading the view.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listAgreementsName.count;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("AgreementsTVCell", forIndexPath: indexPath) as!
        AgreementsTVCell;
        cell.lbName.text = "\(self.listAgreementsName[indexPath.row])";
        cell.lbVirgencia.text = "Janeiro de 2008 à março 2009";
        cell.lbValor.text = "R$ 3000,000.00 mi";
        return cell;
    }
    @IBAction func orderByValues(sender: AnyObject) {
        let alert = UIAlertController(title: "Odernar por", message: "", preferredStyle: UIAlertControllerStyle.Alert);
        alert.addAction(UIAlertAction(title: "Valor", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) -> Void in }))
        alert.addAction(UIAlertAction(title: "Virgência", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) -> Void in }))
        self.presentViewController(alert, animated: true) { () -> Void in}
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("ShowDetailsAgreements", sender: self);
        tableView.deselectRowAtIndexPath(indexPath, animated: true);
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func chageCity(sender: AnyObject) {
        self.performSegueWithIdentifier("AgreementsEditLocalSegue", sender: self);
    }
    

}
