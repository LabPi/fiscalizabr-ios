//
//  FactoryAgreements.swift
//  fiscalizaBr
//
//  Created by Warteruzannan on 4/14/16.
//  Copyright © 2016 FiscalizaBr. All rights reserved.
//

import Foundation
class FactoryAgreements {
    
    
    func factoryAgreements(name:String,date_inital:NSDate,date_final:NSDate,city:String,value:Double) -> Agreements{
        let agreements = Agreements();
        agreements.name = name;
        agreements.city = city;
        agreements.date_final = date_final;
        agreements.value = value;
        return agreements;
    }
}
