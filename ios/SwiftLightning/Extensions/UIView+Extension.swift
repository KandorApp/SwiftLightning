//
//  DesignableViews.swift
//  SwiftLightning
//
//  Created by Howard Lee on 2018-04-14.
//  Copyright © 2018 BiscottiGelato. All rights reserved.
//

import UIKit

// This just exposes more attributes in Storyboards for even standard UIView based components
extension UIView {
  
  @IBInspectable
  var cornerRadius: CGFloat {
    get {
      return layer.cornerRadius
    }
    set {
      layer.cornerRadius = newValue
    }
  }
  
  @IBInspectable
  var borderWidth: CGFloat {
    get {
      return layer.borderWidth
    }
    set {
      layer.borderWidth = newValue
    }
  }
  
  @IBInspectable
  var borderColor: UIColor? {
    get {
      if let color = layer.borderColor {
        return UIColor(cgColor: color)
      }
      return nil
    }
    set {
      if let color = newValue {
        layer.borderColor = color.cgColor
      } else {
        layer.borderColor = nil
      }
    }
  }
  
  @IBInspectable
  var shadowRadius: CGFloat {
    get {
      return layer.shadowRadius
    }
    set {
      layer.shadowRadius = newValue
    }
  }
  
  @IBInspectable
  var shadowOpacity: Float {
    get {
      return layer.shadowOpacity
    }
    set {
      layer.shadowOpacity = newValue
    }
  }
  
  @IBInspectable
  var shadowOffset: CGSize {
    get {
      return layer.shadowOffset
    }
    set {
      layer.shadowOffset = newValue
    }
  }
  
  @IBInspectable
  var shadowColor: UIColor? {
    get {
      if let color = layer.shadowColor {
        return UIColor(cgColor: color)
      }
      return nil
    }
    set {
      if let color = newValue {
        layer.shadowColor = color.cgColor
      } else {
        layer.shadowColor = nil
      }
    }
  }
}
