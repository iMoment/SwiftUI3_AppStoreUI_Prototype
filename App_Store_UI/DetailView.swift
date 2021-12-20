//
//  DetailView.swift
//  App_Store_UI
//
//  Created by Stanley Pan on 2021/12/20.
//

import SwiftUI
import SwiftUIX

struct DetailView: View {
    var namespace: Namespace.ID
    
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 0) {
                Text("App of the day".uppercased()).font(.largeTitle).bold()
                    .matchedGeometryEffect(id: "title", in: namespace)
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
                .background(
                    VisualEffectBlurView(blurStyle: .systemMaterialDark)
                )
            }
            .frame(maxWidth: .infinity, maxHeight: 500)
            .background(
                Image("image3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .matchedGeometryEffect(id: "image", in: namespace)
            )
            // *Apple Corner Radius*
            .mask(
                RoundedRectangle(cornerRadius: 0, style: .continuous)
                    .matchedGeometryEffect(id: "shape", in: namespace)
            )
            .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct DetailView_Previews: PreviewProvider {
    @Namespace static var namespace
    
    static var previews: some View {
        DetailView(namespace: namespace)
    }
}
