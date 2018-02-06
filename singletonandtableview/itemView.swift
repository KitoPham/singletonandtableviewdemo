//
//  itemView.swift
//  singletonandtableview
//
//  Created by iguest on 2/5/18.
//  Copyright © 2018 iosclass. All rights reserved.
//

import UIKit

class itemView: UIViewController {
    var appdata = AppData.shared
    var num : Int?
    @IBOutlet weak var label: UILabel!

    @IBAction func deleteClick(_ sender: Any) {
        appdata.sentences.remove(at: num!)
        performSegue(withIdentifier: "back", sender: self)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        label.text = appdata.sentences[num!]
    }
}
