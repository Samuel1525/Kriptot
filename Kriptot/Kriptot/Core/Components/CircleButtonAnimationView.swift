//
//  CircleButtonAnimationView.swift
//  Kriptot
//
//  Created by Samuel AYM on 30/07/23.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @Binding var animate : Bool
    var body: some View {
        Circle()
            .stroke(lineWidth: 3.0)
            .scale(animate ? 1.0 : 0.5)
            .opacity(animate ? 0.0 : 1.0)
            .animation(animate ? Animation.easeOut(duration: 1) : .none)
            .foregroundColor(Color.theme.accent)
    }
}

struct CircleButtonAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonAnimationView(animate: .constant(false))
    }
}
