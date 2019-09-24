//
//  RoundButton.swift
//  CS Guru
//
//  Created by TN007 on 9/23/19.
//  Copyright © 2019 Tarabi. All rights reserved.
//

import UIKit

@IBDesignable
class DesignableButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var shadowColor: UIColor = UIColor.clear {
        didSet{
            self.layer.shadowColor = shadowColor.cgColor
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = CGSize(width: 0, height: 0) {
        didSet{
            self.layer.shadowOffset = shadowOffset
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 0 {
        didSet{
            self.layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable var shadowOpacity: CGFloat = 0 {
        didSet{
            self.layer.shadowOpacity = Float(shadowOpacity)
        }
    }
    
    @IBInspectable var masksToBounds: Bool = false {
        didSet{
            self.layer.masksToBounds = masksToBounds
        }
    }
    
    @IBInspectable var shadowPath: UIBezierPath = UIBezierPath.init() {
        didSet{
            self.layer.shadowPath = UIBezierPath(roundedRect:self.bounds, cornerRadius:self.inputView!.layer.cornerRadius).cgPath
        }
    }
    
}

@IBDesignable
class DesignableView: UIView {

    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
}


@IBDesignable
class DesignableImage: UIImageView {

    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
}

//@IBDesignable
//class DesignableImage: UIImageView {
//    private struct AssociatedKey
//    {
//        static var rounded = "UIImageView.rounded"
//    }
//
//    @IBInspectable var rounded: Bool
//    {
//        get
//        {
//            if let rounded = objc_getAssociatedObject(self, &AssociatedKey.rounded) as? Bool
//            {
//                return rounded
//            }
//            else
//            {
//                return false
//            }
//        }
//        set
//        {
//            objc_setAssociatedObject(self, &AssociatedKey.rounded, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
//            layer.cornerRadius = CGFloat(newValue ? 1.0 : 0.0)*min(bounds.width, bounds.height)/2
//        }
//    }
//}
