//
//  DetailsView.swift
//  Achensee
//
//  Created by TyrolIndustries on 24.06.18.
//  Copyright © 2018 TyrolIndustries. All rights reserved.
//

import UIKit

class DetailsView: UIViewController {
    var location : String?
    
    @IBOutlet weak var titleBar: UINavigationItem!
    
    override func viewDidLoad() {
        //self.location = "sepp"
        //self.navigationController!.navigationBar.topItem!.title = self.location
        self.titleBar.title = self.location
    }
    
}

