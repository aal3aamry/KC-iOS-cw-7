//
//  ContentView.swift
//  emojiExtraTask
//
//  Created by عبدالرحمن العامري on 19/08/2022.
//

import SwiftUI

struct ContentView: View {
    var emoji = []
    var body: some View {
        ZStack{
        VStack{
        Text("Choose an emoji")
            .padding()
            
            Spacer()
        }
        ScrollView(.horizontal){
            HStack{
                Text("\(emoji)")
                    .font(.system(size: 100, weight: .bold, design: .rounded))
            }
            .frame(width: 300, height: 100)
            .padding()
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
