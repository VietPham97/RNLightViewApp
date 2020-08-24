//
//  BulbView.swift
//  RNLightViewApp
//
//  Created by Viet Pham on 2020-08-24.
//

import UIKit

class BulbView: UIView {
  
  @objc var onStatusChange: RCTDirectEventBlock?
  
  @objc var isOn: Bool = false {
    didSet {
      button.setTitle(String(describing: isOn ? "Switch Off" : "Switch On"), for: .normal)
      button.backgroundColor = isOn ? .yellow : .black
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.addSubview(button)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  lazy var button: UIButton = {
    let button = UIButton.init(type: .system)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
    button.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    button.addTarget(self, action: #selector(changeBulbStatus), for: .touchUpInside)
    return button
  }()
  
  @objc func changeBulbStatus() {
    isOn = !isOn
    onStatusChange!(["isOn": isOn])
  }
  
}
