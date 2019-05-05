//
//  DateViewModel.swift
//  BasicMVVM
//
//  Created by Harish Kumar on 05/05/19.
//  Copyright © 2019 Harish Kumar. All rights reserved.
//

import Foundation

class DateViewModel {
    
    let date : DateModel
    let todayDate = Date()
    let currentYear = Calendar.current.component(.year, from: Date())
    let currentMonth = Calendar.current.component(.month, from: Date())
    let currentDay = Calendar.current.component(.day, from: Date())
    
    init(date: DateModel) {
        self.date = date
    }
    
    var daysBehind : String {
        let startDateComponent = DateComponents(year: currentYear, month: 1, day: 1)
        let currentDateComponent = DateComponents(year: currentYear, month: currentMonth, day: currentDay)
        let dayDifference = Calendar.current.dateComponents([.day], from: startDateComponent, to: currentDateComponent)
        return "You have completed \(dayDifference.day!) days in this year"
    }
    
    var daysAhead : String {
        let lastDateComponent = DateComponents(year: currentYear + 1, month: 1, day: 0)
        let currentDateComponent = DateComponents(year: currentYear, month: currentMonth, day: currentDay)
        let dayDifference = Calendar.current.dateComponents([.day], from: currentDateComponent, to: lastDateComponent)
        return "You have still \(dayDifference.day!) days left in this year"
    }
    
}
