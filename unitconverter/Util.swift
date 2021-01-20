//
//  Util.swift
//  unitconverter
//
//  Created by Zoe L on 2021/01/20.
//

import Foundation
import UIKit

// unit converter that supports temperature, weight, length and volume.
func converter(string: String) -> String {
    
    // split number and unit by space
    let array = string.components(separatedBy: " ")
    let num = Float(array[0])
    let unit = array[1]
    var result: String
    var temp: Float // temporary varaible used for calculation
    
    switch unit {
    // temperature
    case "c":
        temp = Float((num! * 9/5) + 32)
        result = String(format: "%.2f", temp) + " " + "F"
    case "f":
        temp = Float((num! - 32) * 5/9)
        result = String(format: "%.2f", temp) + " " + "C"
    // weight
    case "pounds", "lbs":
        temp = Float((num! / 2.205))
        result = String(format: "%.2f", temp) + " " + "kg"
    case "g":
        temp = Float((num! / 28.35))
        result = String(format: "%.2f", temp) + " " + "oz"
    case "kg":
        temp = Float((num! * 2.205))
        result = String(format: "%.2f", temp) + " " + "lbs"
    // length
    case "inches", "inch", "in":
        temp = Float((num! * 2.54))
        result = String(format: "%.2f", temp) + " " + "cm"
    case "feet", "foot", "ft":
        temp = Float((num! / 3.281))
        result = String(format: "%.2f", temp) + " " + "m"
    case "mile", "miles":
        temp = Float((num! * 1.609))
        result = String(format: "%.2f", temp) + " " + "km"
    case "cm":
        temp = Float((num! / 2.54))
        result = String(format: "%.2f", temp) + " " + "inches"
    case "m":
        temp = Float((num! * 3.281))
        result = String(format: "%.2f", temp) + " " + "feet"
    case "km":
        temp = Float((num! / 1.609))
        result = String(format: "%.2f", temp) + " " + "miles"
    // volume
    case "gallon", "gallons":
        temp = Float((num! * 3.785))
        result = String(format: "%.2f", temp) + " " + "L"
    case "cup", "cups":
        temp = Float((num! * 237))
        result = String(format: "%.2f", temp) + " " + "mL"
    case "tablespoon":
        temp = Float((num! * 14.787))
        result = String(format: "%.2f", temp) + " " + "mL"
    case "teaspoon":
        temp = Float((num! * 4.929))
        result = String(format: "%.2f", temp) + " " + "mL"
    default:
        result = "Sorry. We couldn't find any unit matching" + unit
    }
    return result
}
