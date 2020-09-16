//
//  UIColor+Ext.swift
//  RNLightViewApp
//
//  Created by Viet Pham on 2020-09-10.
//

import UIKit

extension UIColor {
  
  convenience init(hexColor number: UInt32, alpha: CGFloat = 1) {
     let red = (number & 0xff0000) >> 16
     let green = (number & 0x00ff00) >> 8
     let blue = (number & 0x0000ff)
     self.init(red: CGFloat(red) / 255, green: CGFloat(green) / 255, blue: CGFloat(blue) / 255, alpha: alpha)
  }
  
  convenience init(hex hexString: String, alpha: CGFloat = 1) {
     let hexColorString = hexString.components(separatedBy: "#").last!
     if let colorNumber = UInt32(hexColorString, radix: 16) {
        self.init(hexColor: colorNumber, alpha: alpha)
     }
     else {
        self.init(red: 0, green: 0, blue: 0, alpha: 0)
     }
  }
  
}
