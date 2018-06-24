//
//  ViewController.swift
//  Achensee
//
//  Created by TyrolIndustries on 22.06.18.
//  Copyright © 2018 TyrolIndustries. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    
    @IBAction func PertisauButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "PertisauMenü", sender: self)
    }
    

    @IBAction func MaurachButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "MaurachMenü", sender: self)
    }

    @IBAction func AchenkirchButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "AchenkirchMenü", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
       navigationItem.backBarButtonItem = UIBarButtonItem(title: "Zurück", style: .plain, target: nil, action: nil)
       
    
    

        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //super.prepare(for: <#T##UIStoryboardSegue#>, sender: <#T##Any?#>)
        let vc = segue.destination as! DetailsView
        let location = segue.identifier?.replacingOccurrences(of: "Menü", with: "")
        
        vc.location = location
        
        /*
        if segue.identifier == "PertisauMenü" {
            vc.location = "Pertisau"
        } else if segue.identifier == "MaurachMenü" {
            vc.location = "Maurach"
        } else if segue.identifier == "AchenkirchMenü" {
            vc.location = "Achenkirch"
        }
        */
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension UIButton {
    func applyDesign() {
        self.backgroundColor = UIColor.black
        self.layer.cornerRadius = self.frame.height / 2
        self.setTitleColor(UIColor.white, for: .normal)
    }
}


