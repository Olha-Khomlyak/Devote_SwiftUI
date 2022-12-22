//
//  HeaderView.swift
//  Devote
//
//  Created by Olha Khomlyak on 22.12.2022.
//

import SwiftUI

struct HeaderView: View {
    
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    
    var body: some View {
        HStack(spacing:20){
            // TITLE
            
            Text("Devote")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.heavy)
                .padding(.leading,4)
                .foregroundColor(.white)
            
            Spacer()
            
            // EDIT BUTTON
            EditButton()
                .font(.system(size: 16, weight: .semibold, design: .rounded))
                .padding(.horizontal, 10)
                .frame(minWidth: 70, minHeight: 24)
                .foregroundColor(.white)
                .background(
                    Capsule().stroke(Color.white, lineWidth: 2)
                )
            
            // APPEREANCE BUTTON
            Button {
                isDarkMode.toggle()
                playSound(sound: "sound-tap", type: "mp3")
            } label: {
                Image(systemName: isDarkMode ? "moon.circle.fill" : "moon.circle")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.white)
                    .font(.system(.title, design: .rounded))
            }

            
           
        }
        .padding(.horizontal,10)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
