//
//  UIApplication.swift
//  Kriptot
//
//  Created by Samuel AYM on 06/08/23.
//

import Foundation
import SwiftUI

extension UIApplication{
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
