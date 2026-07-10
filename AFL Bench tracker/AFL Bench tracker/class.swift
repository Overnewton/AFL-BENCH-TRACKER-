//
//  class.swift
//  AFL Bench tracker
//
//  Created by Angus McKay on 21/6/2026.
//

import Foundation
//class creation
class Player {
    
    
    var name : String = ""
    var  number : Int = 0
    var   position : String = ""
    var period: Int = 0
    var timeoff : Timer
    var timeon : Timer
    
    
    init(name: String, number: Int, position: String, period : Int, timeoff : Timer, timeon : Timer) {
        self.timeoff = timeoff
        self.name = name
        self.number = number
        self.position = position
        self.timeoff = timeoff
        self.period = period
        self.timeon = timeon
    }
    public enum CodingKeys:
        String, CodingKey {
        case name
        case number
        case position
        case timeon
        case timeoff
        case period
    }
    
    
    func toString() -> String {
        var periodString: String = "On Bench"
        
        if (period == 1) {
            periodString = "Off Bench"
            return "Name: \(name)       Position: \(position) Number: \(number)  Status:\(periodString)        Time: \(timeoff)"
            
            
        }
        else if (period == 2) {
            periodString = "Injured"
            return "Name: \(name)       Position: \(position) Number: \(number) Status:\(periodString)         Time: nil"
        }
        else {
            return "Name: \(name)       Position: \(position) Number: \(number)  Status:\(periodString)        Time: \(timeon)"
        }
    }
}
       
var playerList: [Player] = []
    

