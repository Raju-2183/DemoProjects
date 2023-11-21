//
//  SearchBar.swift
//  Project
//
//  Created by Nagaraju Yadav on 21/11/23.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        TextField("Find your branch", text: $text)
            .font(.subheadline)
            .fontWeight(.light)
            .padding(.leading, 20)
            .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
    }
}

#Preview {
    SearchBar(text: .constant("Hello"))
}
