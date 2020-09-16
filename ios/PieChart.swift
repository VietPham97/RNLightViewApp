//
//  PieChart.swift
//  RNLightViewApp
//
//  Created by Viet Pham on 2020-09-10.
//

import Foundation

@objc(PieChart)

class PieChart: RCTViewManager {
  
  override func view() -> UIView! {
    PieChartView()
  }
  
  override class func requiresMainQueueSetup() -> Bool {
    return true
  }
  
}
