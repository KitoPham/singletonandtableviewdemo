//
//  ViewController.swift
//  singletonandtableview
//
//  Created by iguest on 2/5/18.
//  Copyright © 2018 iosclass. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var appdata = AppData.shared
    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onClick(_ sender: Any) {
    
        appdata.sentences.append(textfield.text!)
        performSegue(withIdentifier: "segue", sender: self)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

