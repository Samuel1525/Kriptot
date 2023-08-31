//
//  Double.swift
//  Kriptot
//
//  Created by Samuel AYM on 02/08/23.
//

import Foundation

extension Double{
    ///Converts Double to currency with 2-6 decimal places
    ///```
    ///Convert 1234.56 to $1,234.56
    ///Convert 12.3456 to $12.34
    ///Convert 0.123456 to $0.12
    ///```
    private var currencyFormatter2: NumberFormatter{
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = .current //default value
        formatter.currencyCode = "usd" //change currency
        formatter.currencyCode = "$" //change currency symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    ///Converts Double to currency as a String with 2-6 decimal places
    ///```
    ///Convert 1234.56 to $1,234.56
    ///Convert 12.3456 to $12.34
    ///Convert 0.123456 to $0.12
    ///```
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    ///Converts Double to currency with 2-6 decimal places
    ///```
    ///Convert 1234.56 to $1,234.56
    ///Convert 12.3456 to $12.3456
    ///Convert 0.123456 to $0.123456
    ///```
    private var currencyFormatter6: NumberFormatter{
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = .current //default value
        formatter.currencyCode = "usd" //change currency
        formatter.currencyCode = "$" //change currency symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    ///Converts Double to currency as a String with 2-6 decimal places
    ///```
    ///Convert 1234.56 to $1,234.56
    ///Convert 12.3456 to $12.3456
    ///Convert 0.123456 to $0.123456
    ///```
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    ///Converts Double to currency as a String representation with 2 decimals
    ///```
    ///Convert 1234.56 to 1234.56
    ///Convert 12.3456 to 12.34
    ///Convert 0.123456 to 0.12
    ///```
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    ///Converts Double to currency as a String representation with 2 decimals and percent symbol
    ///```
    ///Convert 1234.56 to 1234.56%
    ///Convert 12.3456 to 12.34%
    ///Convert 0.123456 to 0.12%
    ///```
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
}
