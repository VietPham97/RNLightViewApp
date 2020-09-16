//
//  PieChartView.swift
//  RNLightViewApp
//
//  Created by Viet Pham on 2020-09-10.
//

import UIKit

class PieChartView: UIView {
  
  @objc var colorForeground: String = "#00AEEF" {
    didSet {
      setNeedsDisplay()
    }
  }
  
  @objc var colorBackground: String = "#CD5C5C" {
    didSet {
      setNeedsDisplay()
    }
  }
  
  override func draw(_ rect: CGRect) {
    // Background
    let path = UIBezierPath(ovalIn: rect)
    let fillColor = UIColor(hex: colorBackground)
    fillColor.setFill()
    path.fill()
    
    // Foreground
    // Define the center point to rotate the arc around
    let center = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
    
    // Calculate the radius based on the maximum dimension of the view
    let radius = max(bounds.width, bounds.height)
    
    // Define the start and end angles for the arc
    let startAngle: CGFloat = 3 * .pi / 2
    let endAngle: CGFloat = 2 * .pi
    
    // Create a path based on the provided center point, radius and angles above
    let foregroundPath = UIBezierPath(
      arcCenter: center,
      radius: radius / 4,
      startAngle: startAngle,
      endAngle: endAngle,
      clockwise: false
    )
    
    // Set the line width and color before finally stoking the path
    foregroundPath.lineWidth = radius / 2
    let foregroundColor = UIColor(hex: colorForeground)
    foregroundColor.setStroke()
    foregroundPath.stroke()
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = .clear
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
