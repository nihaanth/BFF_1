//  home.swift
//  tabBar
//
//  Created by nihaanth reddy on 29/06/21.
//

import SwiftUI

struct home: View {
    var body: some View {
        VStack (alignment: .leading, spacing: nil) {
            Homenav()
            Text("What would you like to buy today ?")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            offersTab(title: "Today's offer")
            
            VStack(alignment: .leading, spacing: 9){
                Image("fruits")
                    .resizable()
                    .frame(width: 90, height: 100)
                    .padding(.bottom,1)
                Text("onion")
                
                    
            }.frame(width: 100)
            .padding()
            .background(Color("lightGrayColor"))
            .cornerRadius(20.0)
            
            
            Spacer()
           
            }
        
        .padding()
    }
    }

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}

struct Homenav: View {
var body: some View {
        HStack{
            Image(systemName: "bell.circle.fill")
                .resizable()
                .frame(width: 31, height: 31)
                .onTapGesture {
                }
            Spacer()
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 31, height: 31)
                .onTapGesture {
                    
                }
        }.padding()
    }
}

struct offersTab: View {
    let title: String
    var body: some View {
        HStack{
            Text(title)
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }
    }
}
