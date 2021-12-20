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
    @State var appear = false
    
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
                        .matchedGeometryEffect(id: "logo", in: namespace)
                    VStack(alignment: .leading, spacing: 4) {
                        Text("BurritoApp")
                            .font(.body).bold()
                            .matchedGeometryEffect(id: "appname", in: namespace)
                        Text("Make your dream burrito into reality")
                            .font(.caption)
                            .matchedGeometryEffect(id: "appdescription", in: namespace)
                    }
                    .foregroundColor(Color.white)
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .padding(12)
                .background(
                    VisualEffectBlurView(blurStyle: .systemMaterialDark)
                        .matchedGeometryEffect(id: "blur", in: namespace)
                )
            }
            .frame(maxWidth: .infinity, maxHeight: 700)
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
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .padding()
                .offset(y: appear ? 0 : 100)
                .onAppear {
                    appear = true
                }
                .onDisappear {
                    appear = false
                }
            
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
