//
//  ContentView.swift
//  App_Store_UI
//
//  Created by Stanley Pan on 2021/12/20.
//

import SwiftUI
import SwiftUIX

struct ContentView: View {
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            if show == false {
                VStack(spacing: 16) {
                    Text("Today")
                        .font(.largeTitle).bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
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
                    .frame(maxWidth: .infinity, maxHeight: 335)
                    .background(
                        Image("image3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .matchedGeometryEffect(id: "image", in: namespace)
                    )
                    // *Apple Corner Radius*
                    .mask(
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .matchedGeometryEffect(id: "shape", in: namespace)
                    )
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                    
                    Spacer()
                }
                .padding(20)
            } else {
                DetailView(namespace: namespace)
//                    .transition(.move(edge: .bottom))
            }
        }
        .animation(.spring())
        .onTapGesture {
            show.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
