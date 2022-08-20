//
//  ContentView.swift
//  studentInfo
//
//  Created by عبدالرحمن العامري on 17/08/2022.
//

import SwiftUI
struct ContentView: View {
    @State var isAlertPresented : Bool = false

    var body: some View {
       
            ZStack{
                (Color(red: 0.376, green: 0.733, blue: 0.776))                .ignoresSafeArea()
                
                VStack{
                Image("bg")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    
                    Divider()
                    
                    Text("سجل الطلبة")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(Color.white)
                    
                    Divider()

                    ScrollView {
                    ForEach(students) {
                        student in
                        Text("الاسم: \(student.fullName)")
                        Text("العمر: \(student.Age)")
                        Text("السنة: \(student.Year)")
                            
                        Divider()
                    }.font(.system(size: 20, weight: .medium, design: .rounded))
                    .frame(width: 350, height: 400)
                    .background(Color.primary.opacity(0.4))
                        
                    }
                    
                    HStack{
                        Spacer()
                        Image(systemName: "info.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .scaledToFit()
                            .onTapGesture {
                                isAlertPresented.toggle()
                            }
                            .alert(isPresented: $isAlertPresented) {
                                Alert(title: Text("شكرا لأنك طقيت هني"), message: Text("تواصل مع أ. جنة المقيصيب على دسكورد عشان تسجلك"), dismissButton: .default(Text("حاضر")))
                            }

                        Spacer()
                        
                        Text("عدد الطلبة المسجلين:4")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .frame(width: 200, height: 20)
                            
                        Spacer()
                    }
                    .frame(width: 350, height: 100)
                    .cornerRadius(20)

                    .border(.black)
                }
                
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
