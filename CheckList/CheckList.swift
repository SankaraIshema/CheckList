//
//  CheckList.swift
//  CheckList
//
//  Created by BT-Training on 26/08/16.
//  Copyright © 2016 BT-Training. All rights reserved.
//

import Foundation

class CheckList {
    var title : String = ""
    var done : Bool = false
    
    
    init (withTitle : String) {
        self.title = withTitle
        self.done = false
    }
}
