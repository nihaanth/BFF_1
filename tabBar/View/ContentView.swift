//
//  ContentView.swift
//  tabBar

//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().barTintColor = .systemGreen
    }
    @State var selectedIndex = 0
    @State var shouldshowModal = false
    
    let tabbBarImageName = ["house.fill","photo.fill","bag.circle","heart.fill","giftcard.fill"]
    var body: some View {
        VStack(spacing: 0){
            
        ZStack{

            Spacer().fullScreenCover(isPresented: $shouldshowModal, content: {
                Button(action: {shouldshowModal.toggle()}, label: {
                    NavigationView{
                        ScrollView{
                            Text("Cart")
                                .bold()
                                .foregroundColor(.black)
                        }
                    }
                })
            })
           
            switch selectedIndex{
            case 0:
              
               home()
                
               
            case 1:
                NavigationView{
                
                    ScrollView{
                    Text("")
                        .navigationTitle("Gallary")
                    }
                }
            case 2:
                NavigationView{
                    ScrollView{
                        Text("")
                            .navigationTitle("Cart")
                    }
                }
            case 3:
                NavigationView{
                    ScrollView{
                        Text("")
                            .navigationTitle("Favorites")
                    }
                }
            case 4:
                NavigationView{
                    ScrollView{
                        Text("")
                            .navigationTitle("Offers")
                    }
                }
            default:
                Text("remaining tabs")
            }
            }
            
           Spacer()
            
            Divider()
            
            HStack{
                
            ForEach(0..<5){ num in
                Button(action: {
                    
                    if num == 2{
                        shouldshowModal.toggle()
                        return
                    }
                    
                    selectedIndex = num
                }, label: {
                    Spacer()

                    if num == 2{
                        Image(systemName: tabbBarImageName[num])
                            .font(.system(size: 55,weight: .bold))
                            .foregroundColor(.red)
                    }else{
                        Image(systemName: tabbBarImageName[num])
                            .font(.system(size: 25,weight: .bold))
                            .foregroundColor(selectedIndex == num ? Color(.black):
                                                .init(white: 0.5))
                    }
                    Spacer()
                })
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
}
