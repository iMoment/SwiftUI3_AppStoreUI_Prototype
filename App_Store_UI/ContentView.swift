//
//  ContentView.swift
//  App_Store_UI
//
//  Created by Stanley Pan on 2021/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Today")
                .font(.largeTitle).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack(spacing: 0) {
                Text("App of the day".uppercased()).font(.largeTitle).bold()
                    .foregroundColor(Color.white)
                    .frame(maxWidth: 150, maxHeight: .infinity, alignment: .bottomLeading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                HStack {
                    Image("appLogo")
                        .frame(width: 36, height: 36)
                        .cornerRadius(10)
                    VStack(alignment: .leading, spacing: 4) {
                        Text("BurritoApp")
                            .font(.body).bold()
                        Text("Make your dream burrito into reality")
                            .font(.caption)
                    }
                    .foregroundColor(Color.white)
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .padding(12)
                .background(Color.black.opacity(0.8))
            }
            .frame(maxWidth: .infinity, maxHeight: 335)
            .background(
                Image("image3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
            // *Apple Corner Radius*
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
            
            Spacer()
        }
        .padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
