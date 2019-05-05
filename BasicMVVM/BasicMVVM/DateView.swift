//
//  DateView.swift
//  BasicMVVM
//
//  Created by Harish Kumar on 05/05/19.
//  Copyright © 2019 Harish Kumar. All rights reserved.
//

import Foundation
import UIKit

class DateView: UIView {
    
    let daysBehind : UILabel
    let daysAhead : UILabel
    
    override init(frame: CGRect) {
        let TopMargin : CGFloat = 22
        let HorizontalMargin : CGFloat = 16
        let LabelHeight : CGFloat = 100
        
        daysBehind =  UILabel(frame: CGRect(x: HorizontalMargin, y: TopMargin, width: frame.width - CGFloat(2*TopMargin), height: LabelHeight))
        daysBehind.textAlignment = .center
        daysBehind.numberOfLines = 0
        
        daysAhead = UILabel(frame: CGRect(x: HorizontalMargin, y: TopMargin + LabelHeight, width: frame.width - CGFloat(2*TopMargin), height: LabelHeight))
        daysAhead.textAlignment = .center
        daysBehind.numberOfLines = 0
        
        super.init(frame: frame)
        
        addSubview(daysBehind)
        addSubview(daysAhead)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        if let label = aDecoder.decodeObject() as? UILabel {
            self.daysBehind = label
        } else {
            return nil
        }
        if let label = aDecoder.decodeObject() as? UILabel {
            self.daysAhead = label
        } else {
            return nil
        }
        super.init(coder: aDecoder)
//        fatalError("init(coder:) has not been implemented")
    }
    
}
