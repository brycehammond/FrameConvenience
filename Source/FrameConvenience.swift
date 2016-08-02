//
//  FrameConvenience.swift
//  Flyreel
//
//  Created by Bryce Hammond on 8/2/16.

import UIKit

public extension UIView {
    
    public var frameOrigin: CGPoint {
        get {
            return self.frame.origin
        }
        set(newValue) {
            var viewFrame = self.frame
            viewFrame.origin = newValue
            self.frame = viewFrame
            
        }
    }
    
    public var frameXOrigin: CGFloat {
        get {
            return self.frame.origin.x
        }
        set(newValue) {
            var viewFrame = self.frame
            viewFrame.origin.x = newValue
            self.frame = viewFrame
        }
    }
    
    public var frameYOrigin: CGFloat {
        get {
            return self.frame.origin.y
        }
        set(newValue) {
            var viewFrame = self.frame
            viewFrame.origin.y = newValue
            self.frame = viewFrame
        }
    }
    
    public var frameSize: CGSize {
        get {
            return self.frame.size
        }
        set(newValue) {
            var viewFrame = self.frame
            viewFrame.size = newValue
            self.frame = viewFrame
        }
    }
    
    public var frameHeight: CGFloat {
        get {
            return self.frame.size.height
        }
        set(newValue) {
            var viewFrame = self.frame
            viewFrame.size.height = newValue
            self.frame = viewFrame
        }
    }
    
    public var frameWidth: CGFloat {
        get {
            return self.frame.size.width
        }
        set(newValue) {
            var viewFrame = self.frame
            viewFrame.size.width = newValue
            self.frame = viewFrame
        }
    }
    
    public var rightBorderXValue: CGFloat {
        get {
            return CGRectGetMaxX(self.frame)
        }
        set(newValue) {
            var viewFrame = self.frame
            viewFrame.origin.x = newValue - viewFrame.size.width
            self.frame = viewFrame
        }
    }
    
    public var bottomBorderYValue: CGFloat {
        get {
            return CGRectGetMaxY(self.frame)
        }
        set(newValue) {
            var viewFrame = self.frame
            viewFrame.origin.y = newValue - viewFrame.size.height
            self.frame = viewFrame
        }
    }
    
    public func frameForBorderWithSize(size: CGFloat) -> CGRect {
        let x = self.frameXOrigin - size
        let y = self.frameYOrigin - size
        let width = self.frameWidth + (size * 2)
        let height = self.frameHeight + (size * 2)
        return CGRect(x: x, y: y, width: width, height: height)
    }
    
    public func centerVerticallyInSuperviewWithXOrigin(xOrigin: CGFloat) {
        if let superview = self.superview {
            let superviewBounds = superview.bounds
            var viewFrame = self.frame
            viewFrame.origin.x = xOrigin
            viewFrame.origin.y = floor((superviewBounds.size.height - viewFrame.size.height) / 2)
            self.frame = viewFrame
        }
    }
    
    public func centerHorizontallyInSuperviewWithYOrigin(yOrigin: CGFloat) {
        if let superview = self.superview {
            let superviewBounds = superview.bounds
            var viewFrame = self.frame
            viewFrame.origin.y = yOrigin
            viewFrame.origin.x = floor((superviewBounds.size.width - viewFrame.size.width) / 2)
            self.frame = viewFrame
        }
    }
    
    public func centerInSuperview() {
        self.centerInSuperviewWithOffset(CGPointZero)
    }
    
    public func centerInSuperviewWithOffset(offset: CGPoint) {
        if let superview = self.superview {
            let superviewBounds = superview.bounds
            var viewFrame = self.frame
            viewFrame.origin.x = floor((superviewBounds.size.width - viewFrame.size.width) / 2) + offset.x
            viewFrame.origin.y = floor((superviewBounds.size.height - viewFrame.size.height) / 2) + offset.y
            self.frame = viewFrame
        }
    }
    
}