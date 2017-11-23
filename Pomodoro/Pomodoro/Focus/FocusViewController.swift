//
//  FocusViewController.swift
//  Pomodoro
//
//  Created by RoadClu on 2017/11/22.
//  Copyright © 2017年 worldunion. All rights reserved.
//

import UIKit

class FocusViewController: UIViewController {
    
    fileprivate var focusView: FocusView! {
        return self.view as! FocusView
    }
    fileprivate var timer: Timer?
    fileprivate var endDate: Date?
    fileprivate var localNotification: UILocalNotification?
    fileprivate var currentType = TimerType.Idle
    private var totalMinutes = 0
    
    private let kLastDurationKey = "kLastDurationKey"
    private let kLastEndDateKey = "kLastEndDateKey"
    
    override func loadView() {
        view = FocusView(frame: .zero)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}
