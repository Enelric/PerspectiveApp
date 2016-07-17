//
//  CalCellView.swift
//  Perspective
//
//  Created by Daniel Dunbar on 7/17/16.
//  Copyright © 2016 Perspective Fitness. All rights reserved.
//

import UIKit
import JTAppleCalendar

class CalCellView: JTAppleDayCellView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    @IBOutlet weak var dayLabel: UILabel!
    
    var normalDayColor = UIColor.blackColor()
    var weekendDayColor = UIColor.grayColor()
    
    
    func setupCellBeforeDisplay(cellState: CellState, date: NSDate) {
        // Setup Cell text
        dayLabel.text =  cellState.text
        
        // Setup text color
        configureTextColor(cellState)
    }
    
    func configureTextColor(cellState: CellState) {
        if cellState.dateBelongsTo == .ThisMonth {
            dayLabel.textColor = normalDayColor
        } else {
            dayLabel.textColor = weekendDayColor
        }
    }

}
