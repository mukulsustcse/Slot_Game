//
//  ContentView.swift
//  Slot_Game
//
//  Created by M. A. Alim Mukul on 01.09.22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var score:Int = 1000
    @State private var rand1:Int = 1
    @State private var rand2:Int = 2
    @State private var rand3:Int = 3
    
    @State var item1:String = "apple"
    @State var item2:String = "cherry"
    @State var item3:String = "star"
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text("Slots Game")
                .font(.largeTitle).padding()
            
            Text("Credit : " + String(score)).padding()
            
            HStack {
                
                Image(String(item1))
                    .resizable()
                    .frame(width: 130, height: 130)
                
                Image(String(item2))
                    .resizable()
                    .frame(width: 130, height: 130)
                
                Image(String(item3))
                    .resizable()
                    .frame(width: 130, height: 130)
            }
            Spacer()
            
            Button(action: {
                
                rand1 = Int.random(in: 1...3)
                rand2 = Int.random(in: 1...3)
                rand3 = Int.random(in: 1...3)
                
                print("Random number 1 : ", rand1)
                
                print("Random number 2 : ", rand2)
                
                print("Random number 3 : ", rand3)
    
                item1 = changeItem(randomNumber: rand1)
                
                item2 = changeItem(randomNumber: rand2)
                
                item3 = changeItem(randomNumber: rand3)
                
                changeScore(a: rand1, b: rand2, c: rand3)
                
            }, label: {
                Text("Spin").font(.largeTitle).foregroundColor(Color.white).padding(50.0).frame(width: 180.0, height: 70.0).background(Color.red).cornerRadius(50)
            })
            Spacer()
        }
    }
    
    func changeScore(a:Int, b:Int, c:Int) {
        
        if a==b && b==c && a==c {
            score += 50
        }
        else {
            score -= 10
        }
        return
    }
    
    
    func changeItem(randomNumber:Int) -> String {
        
        var item:String=""
        
        if randomNumber == 1 {
            item = "apple"
        } else if randomNumber == 2 {
            item = "cherry"
        } else if randomNumber == 3 {
            item = "star"
        }
        
        return item
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
