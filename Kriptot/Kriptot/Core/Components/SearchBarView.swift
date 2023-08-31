//
//  SearchBarView.swift
//  Kriptot
//
//  Created by Samuel AYM on 06/08/23.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var searchText : String
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(searchText.isEmpty ?
                                 Color.theme.secondaryText : Color.theme.accent
                )
            TextField("Search by name or symbol...", text: $searchText)
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x: 10)
                        .foregroundColor(Color.theme
                            .accent)
                        .opacity(searchText.isEmpty ? 0 : 1)
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                            searchText = ""
                        }
                    ,alignment: .trailing
                )
                .foregroundColor(Color.theme.accent)
            
        }
        .font(.headline)
        .padding()
        .background(
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.theme.background)
            .shadow(color: Color.theme.accent.opacity(0.3), radius: 10, x: 0, y: 0)
        )
        .padding()
        
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            SearchBarView(searchText: .constant(""))
                .previewLayout(.sizeThatFits)
            SearchBarView(searchText: .constant(""))
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
        
    }
}
