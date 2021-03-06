//
//  DiscoveredBarCodeView.swift
//  Barcode Scanner
//
//  Created by Jacob Cho on 2015-01-26.
//  Copyright (c) 2015 Jacob. All rights reserved.
//

import UIKit

class DiscoveredBarCodeView: UIView {
    
    var borderLayer : CAShapeLayer?
    var corners : [CGPoint]?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setMyView()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func drawBorder(points: [CGPoint]) {
        self.corners = points
        let path = UIBezierPath()
        
        path.moveToPoint(points.first!)
        for (var i = 1; i < points.count; i++) {
            path.addLineToPoint(points[i])
        }
        path.addLineToPoint(points.first!)
        borderLayer?.path = path.CGPath
    }
    
    func setMyView() {
        borderLayer = CAShapeLayer()
        borderLayer?.strokeColor = UIColor.redColor().CGColor
        borderLayer?.lineWidth = 2.0
        borderLayer?.fillColor = UIColor.clearColor().CGColor
        self.layer.addSublayer(borderLayer)
    }

}
