//
//  TimerView.swift
//  Pomodoro
//
//  Created by Road on 2017/11/23.
//  Copyright © 2017年 worldunion. All rights reserved.
//

import UIKit

class TimerView: UIView {
    var durationInSeconds: CGFloat = 0.0
    var maxValue: CGFloat = 60.0
    var showRemaining = true
    let timerShapeLayer: CAShapeLayer
    let secondsShapeLayer: CAShapeLayer
    let timeLabel: UILabel
    
    private var radius: CGFloat = 0.0
    private var timerCenter: CGPoint = CGPoint(x: 0.0, y: 0.0)
    private let startAngle = -CGFloat(Double.pi) / 2
    private let endAngle = 3 * CGFloat(Double.pi) / 2
    
    private var timerRingPath: UIBezierPath!
    private var secondsRingPath: UIBezierPath!
    private var fullRingPath: UIBezierPath!
    
    override init(frame: CGRect) {
        
        timerShapeLayer = CAShapeLayer()
        secondsShapeLayer = CAShapeLayer()
        timeLabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont(name: "HelveticaNeue-Thin", size: 80)
            label.textAlignment = .center
            label.textColor = TimeStyleKit.timerColor
            return label
        }()
        
        super.init(frame: frame)
        
        backgroundColor = UIColor.clear
        
        addSubview(timeLabel)
        layer.addSublayer(timerShapeLayer)
        layer.addSublayer(secondsShapeLayer)
        
        var constraints = [NSLayoutConstraint]()
        constraints.append(timeLabel.centerXAnchor.constraint(equalTo: centerXAnchor))
        constraints.append(timeLabel.centerYAnchor.constraint(equalTo: centerYAnchor))
        NSLayoutConstraint.activate(constraints)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        timerCenter = CGPoint(x: rect.midX, y: rect.midY)
        radius = rect.size.width / 2 - 10
        
        initTimerState()
        settingTimerRingStyle()
        settingSecondsRingStyle()
        settingFullRingStyle()
    }
    
    
    private func initTimerState() {
        timerShapeLayer.strokeEnd = 0.0
        secondsShapeLayer.strokeEnd = 0.0
    }
    
    private func settingTimerRingStyle() {
        timerRingPath = UIBezierPath(arcCenter: timerCenter, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        timerShapeLayer.path = timerRingPath.cgPath
        
        timerShapeLayer.fillColor = UIColor.clear.cgColor
        timerShapeLayer.strokeColor = TimeStyleKit.timerColor.cgColor
        timerShapeLayer.lineWidth = 3
    }
    
    private func settingSecondsRingStyle() {
        secondsRingPath = UIBezierPath(arcCenter: timerCenter, radius: radius-4, startAngle: startAngle, endAngle: endAngle, clockwise: <#T##Bool#>)
    }
    
    private func settingFullRingStyle() {
        
    }
}




















