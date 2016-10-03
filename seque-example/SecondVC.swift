//
//  SecondVC.swift
//  seque-example
//
//  Created by Marc Bollon on 10/3/16.
//  Copyright © 2016 Marc Bollon. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonAction(_ sender: AnyObject) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func openThirdScreenPressed(_ sender: AnyObject) {
        let buttonTitle = "Third Screen VC"
        performSegue(withIdentifier: "ThirdScreenSegue", sender: buttonTitle)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SequePushVC {
            
            if let title = sender as? String {
                destination.buttonTitle = title
            }
        }
    }
    
}
