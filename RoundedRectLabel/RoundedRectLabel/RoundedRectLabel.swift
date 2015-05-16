//
//  RoundedRectLabel.swift
//  ChatBubble
//
//  Created by Sid on 16/05/15.
//  Copyright (c) 2015 whackylabs. All rights reserved.
//

import UIKit

class RoundedRectLabel: UILabel {
    
    let edgeInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
    
    override func textRectForBounds(bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        var rect = super.textRectForBounds(bounds, limitedToNumberOfLines: numberOfLines)

        if let text = text {
            let estimatedWidth = CGRectGetWidth(rect) - (2 * (edgeInsets.left + edgeInsets.right))
            let estimatedHeight = CGFloat.max
            let calculatedFrame = NSString(string: text).boundingRectWithSize(CGSize(width: estimatedWidth, height: estimatedHeight), options: .UsesLineFragmentOrigin, attributes: [NSFontAttributeName: font], context: nil)
            let calculatedWidth = ceil(CGRectGetWidth(calculatedFrame))
            let calculatedHeight = ceil(CGRectGetHeight(calculatedFrame))
            let finalHeight = (calculatedHeight + edgeInsets.top + edgeInsets.bottom)
            rect.size = CGSize(width: calculatedWidth, height: finalHeight)
        }
        
        return rect
    }
    
    override func drawTextInRect(rect: CGRect) {
        
        UIColor.cyanColor().setFill()
        UIColor.blackColor().setStroke()
        
        let edgePath = UIBezierPath(roundedRect: rect, cornerRadius: 50)
        edgePath.lineWidth = 5.0
        edgePath.lineJoinStyle = kCGLineJoinRound
        edgePath.fill()
        edgePath.stroke()
        
        let textRect = UIEdgeInsetsInsetRect(rect, edgeInsets)
        super.drawTextInRect(textRect)
    }
}
