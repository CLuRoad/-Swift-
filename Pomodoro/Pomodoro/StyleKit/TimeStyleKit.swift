//
//  TimeStyleKit.swift
//  Pomodoro
//
//  Created by RoadClu on 2017/11/22.
//  Copyright © 2017年 worldunion. All rights reserved.
//

import UIKit

class TimeStyleKit: NSObject {

    // Cache
    private struct Cache {
        static var backgroundColor: UIColor = UIColor(red: 0.141, green: 0.149, blue: 0.204, alpha: 1.000)
        static var timerColor: UIColor = UIColor(red: 0.378, green: 0.670, blue: 0.961, alpha: 1.000)
        
    }
    
    // Colors
    public var backgroundColor: UIColor {
        return Cache.backgroundColor
    }
    public var timerColor: UIColor {
        return Cache.timerColor
    }
}
