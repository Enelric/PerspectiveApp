//
//  CalendarViewController.swift
//  Perspective
//
//  Created by Daniel Dunbar on 7/17/16.
//  Copyright © 2016 Perspective Fitness. All rights reserved.
//

import UIKit
import JTAppleCalendar

class CalendarViewController: UIViewController {
    
    
    @IBOutlet var calendarView: JTAppleCalendarView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.calendarView.dataSource = self
        self.calendarView.delegate = self
        self.calendarView.registerCellViewXib(fileName: "CalendarCellView")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension CalendarViewController: JTAppleCalendarViewDataSource, JTAppleCalendarViewDelegate  {
    // Setting up manditory protocol method
    func configureCalendar(calendar: JTAppleCalendarView) -> (startDate: NSDate, endDate: NSDate, numberOfRows: Int, calendar: NSCalendar) {
        // You can set your date using NSDate() or NSDateFormatter. Your choice.
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy MM dd"
        
        let firstDate = formatter.dateFromString("2016 01 05")
        let secondDate = NSDate()
        let numberOfRows = 6
        let aCalendar = NSCalendar.currentCalendar() // Properly configure your calendar to your time zone here
        
        return (startDate: firstDate!, endDate: secondDate, numberOfRows: numberOfRows, calendar: aCalendar)
    }
    
    func calendar(calendar: JTAppleCalendarView, isAboutToDisplayCell cell: JTAppleDayCellView, date: NSDate, cellState: CellState) {
        (cell as! CalCellView).setupCellBeforeDisplay(cellState, date: date)
    }
}
