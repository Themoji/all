//
//  App.swift
//  Themoji
//
//  Created by Felix Krause on 30/06/16.
//  Copyright © 2016 Felix Krause. All rights reserved.
//

import Foundation

class App {
    class func content() -> NSDictionary {
        var myDict: NSDictionary?
        if let path = NSBundle.mainBundle().pathForResource("App", ofType: "plist") {
            myDict = NSDictionary(contentsOfFile: path)
        }
        return myDict!
    }
}
