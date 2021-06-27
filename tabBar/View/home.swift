import SwiftUI
import UIKit
struct home: View {
    @State private var showDetails = false

    
        var body: some View {
           
            Button(action: {
               FruitsPage()
            }){
                VStack(spacing: 4){
                Image("fruits")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .cornerRadius(100)
                    
                    Text("fruits")
                        .fontWeight(.bold)
                        .font(.body)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(40)
                        
                }
            }
        
    
        }



struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
}
