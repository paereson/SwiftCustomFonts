//
//  MainSwiftUIView.swift
//  SwiftCustomFonts
//
//  Created by Michal Gruszkiewicz on 24/07/2023.
//

import SwiftUI

struct MainSwiftUIView: View {
    var body: some View {
        VStack {
            
            Text("This is test label")
                .font(
                    .customFont(
                        font: .tiltPrism,
                        style: .regular,
                        size: .h0
                    )
                )
            
            Text("This is test label")
                .font(
                    .customFont(
                        font: .oswald,
                        style: .bold,
                        size: .h1
                    )
                )
            
            Text("This is test label")
                .font(
                    .customFont(
                        font: .lato,
                        style: .light,
                        size: .h0
                    )
                )
        }
    }
}

struct MainSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MainSwiftUIView()
    }
}
