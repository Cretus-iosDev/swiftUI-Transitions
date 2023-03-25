

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack{
                Spacer()
                if show {
                    Image("sprite")
                        .resizable()
                        .scaledToFit()
                        .shadow(radius: 10)
                        .transition(.move(edge: .leading))
                    Image("sprite")
                        .resizable()
                        .scaledToFit()
                        .shadow(radius: 10)
                        .transition(.scale)
                    Image("sprite")
                        .resizable()
                        .scaledToFit()
                        .shadow(radius: 10)
                        .transition(.slide)
                    
                }
                
                Spacer()
                Text("Transitions")
                    .font(.title.bold())
                    .foregroundColor(.green)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background()
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .onTapGesture {
                        withAnimation(Animation.easeInOut) {
                            show.toggle()
                        }
                    }
            }
            
        
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
