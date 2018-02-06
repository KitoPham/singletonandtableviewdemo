//
//  singleton.swift
//  singletonandtableview
//
//  Created by iguest on 2/5/18.
//  Copyright © 2018 iosclass. All rights reserved.
//

import UIKit

class AppData : NSObject{
    static let shared = AppData()
    open var sentences : [String] = []
    
}
