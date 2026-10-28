// xcode: set sdk=iOS

//
//  ContentView.swift
//  discussion3
//
//  Created by Dylan Chhum on 7/26/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
            albumView()
                
            
            BlurView(style: .systemMaterialDark)
                .ignoresSafeArea(.all)
//           
            VStack {
                extraView()
                albumView()
                titleView()
                timeView()
                playbackView()
            }
        }
    }
     
}

// Do not worry about this
struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style

    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}


struct titleView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 8) {
            HStack {
            Text("Espresso")
                    .foregroundColor(.white)
                .font(.system(size: 32, weight: .bold, ))
                .padding(.horizontal, 15)
               
                Spacer()
                ZStack{
                    Text("+")
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                        .offset(y:-3)
                    Circle()
                        .stroke(Color.white, lineWidth: 3)
                        .foregroundColor(.white)
                        .frame(width: 24, height: 24)
                        .padding(.horizontal, 15)

            }
            }
                Text("Sabrina Carpenter")
                    .foregroundColor (.gray)
                    .font(.system(size:20, weight: .bold))
                    .lineSpacing(10)
                    .padding(.horizontal, 15)
                    
                    
            }
    }
    }

    
    struct timeView: View {
        var body: some View
        {
            VStack {
                ZStack {
                    Circle()
                        .frame(height:10)
                        .foregroundColor(.white)
                        .padding([.trailing], 370)
                    Rectangle()
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .frame(height: 5)
                        .padding([.leading, .trailing], 10)
                        .foregroundColor(.white)
                        .opacity(0.3)
                }
                
                HStack {
                    Text("0:00")
                        .opacity(0.6)
                        .foregroundColor(.white)
                    Spacer()
                    Text("-2:53")
                        .opacity(0.6)
                        .foregroundColor(.white)
                }
                .padding([.trailing, .leading], 10)
            } .offset(y:15)
        }
    }
    
struct playbackView: View {
    var body: some View {
        VStack(spacing: 24) {
            HStack {
                Image(systemName: "chevron.forward.2")
                    .font(.system(size: 28))
                    .padding(.leading, 5)
                Spacer()
                Image(systemName: "backward.end.fill")
                    .font(.system(size: 28))
                Image(systemName: "play.circle")
                    .font(.system(size: 44))
                Image(systemName: "forward.end.fill")
                    .font(.system(size: 28))
                Spacer()
                Image(systemName: "repeat")
                    .font(.system(size: 32))
                    .padding(.trailing, 5)
            }
            .padding()
            
            HStack(spacing: 12) {
                Spacer()
                Image(systemName: "square.and.arrow.up")
                Image(systemName: "text.line.first.and.arrowtriangle.forward")
            }
            .font(.system(size: 20))
            .padding(.trailing, 20)
            
        }
        .foregroundColor(.white)
        
    }
}
    struct albumView : View {
        var body: some View {
            Image("Espresso")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(10)
        }
    }
    
    struct extraView : View {
        var body: some View {
            HStack (spacing: 335) {
                Image(systemName: "chevron.down")
                    .foregroundColor(.white)
                    .offset(y: -20)
                
                
                Image(systemName:
                        "ellipsis")
                .foregroundColor(.white)
                .offset(y: -20)
            }
        }
    }
    
    #Preview {
        ContentView()
    }

