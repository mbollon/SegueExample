//
//  SequePushVC.swift
//  seque-example
//
//  Created by Marc Bollon on 10/3/16.
//  Copyright © 2016 Marc Bollon. All rights reserved.
//

import UIKit

class SequePushVC: UIViewController {

    @IBOutlet weak var buttonLabel: UILabel!
    
    private var _buttonTitle:String!
    
    var buttonTitle:String {
        get {
            return _buttonTitle
        } set {
            _buttonTitle = newValue
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonLabel.text = _buttonTitle
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        
        dismiss(animated: true, completion: nil)
    }
  
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
