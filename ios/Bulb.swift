//
//  Bulb.swift
//  RNLightViewApp
//
//  Created by Viet Pham on 2020-08-24.
//

import Foundation

@objc(Bulb)

class Bulb: RCTViewManager {
  
  override func view() -> UIView! {
    BulbView()
  }
  
  override class func requiresMainQueueSetup() -> Bool {
    return true
  }
  
}
