//
//  ContentView.swift
//  emojiExtraTask
//
//  Created by عبدالرحمن العامري on 19/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var emoji: [String] = ["🫠","🫀","🦾","🤖","🫥","🗿","😄"]
    @State var emojiPic = ""
    
    var gradient : [Color] = [Color("Color01") , Color("Color02")]
    
    
    @State var status = "Tap"
    
    
    @State var isAlertPresented : Bool = false

    
    var body: some View {
        ZStack{
        VStack{
            Text("Choose an emoji")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.white)
                .padding(.all)
            
            
            Text("\(status)")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color.orange)
                .padding(.all)
            Spacer()
        }
        .padding(.all)

            
                
            
        ScrollView(.horizontal){
            HStack{
                
                Text(emoji[6])
                
                    .onTapGesture {
                        emojiPic = emoji[6]
                        
                        status = "حلو"
                    }

                
                Text(emoji[5])
                
                    .onTapGesture {
                        emojiPic = emoji[5]
                        
                        status = "أفا"

                    }

                
                Text(emoji[4])
                
                    .onTapGesture {
                        emojiPic = emoji[4]
                        
                        status = "عادي قول لي لا تستحي"

                    }

              Text(emoji[3])
                    .onTapGesture {
                        emojiPic = emoji[3]
                        
                        status = "عاش المبرمج"

                    }
                
                Text(emoji[2])
                    .onTapGesture {
                        emojiPic = emoji[2]
                        
                        status = "كفوو"

                    }
                
                //Text(emoji[1])
                
                    //.onTapGesture {
                        //emojiPic = emoji[1]
                        
                        
                        
                        //isAlertPresented.toggle()

                            
                    //}
                
                Button {
                    isAlertPresented.toggle()
                    
                    emojiPic = emoji[1]
                } label: {
                    Text(emoji[1])
                        
                        .alert(isPresented: $isAlertPresented) {
                            Alert(title: Text("تبي تدش عايلة بشاير صح؟"), message: Text("حياك ديوانية الآيفون نسويلك اختبار قدرات ببلاش "), dismissButton: .default(Text("وناسه؟ أدري")))
                        }
                        .padding()
                    
                }

                
                Text(emoji[0])
                
                    .onTapGesture {
                        emojiPic = emoji[0]
                        
                        status = "ماعليه تحمّل، الشتاء قادم"
                    }
                

            }
            
            
                    .font(.system(size: 100, weight: .bold, design: .rounded))
            }
      
            .padding()
            
            
            
            VStack{
                Spacer()
                Text("\(emojiPic)")
                    .font(.system(size: 300, weight: .black))

            }
        }
        .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .topLeading, endPoint: .bottomLeading))
        .cornerRadius(50)
        .shadow(color: .black, radius: 2, x: 2, y: 2)
        .ignoresSafeArea()
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
