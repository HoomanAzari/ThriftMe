import SwiftUI

struct WelcomeView: View {
    var bgColour : Color =  Color(red: 91/255, green: 189/255, blue: 130/255)
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("WelcomeImage") //
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 400, height: 200)
                    .padding(.bottom, 40)
                    .padding(.top, 60)
                
                HStack{
                    Text("Thrift")
                    Text("Me")
                        .padding(.leading, -8)
                        .foregroundStyle(Color(red: 191/255, green: 255/255, blue: 218/255))
                }
                .font(.system(size: 80))
                .bold()
                .foregroundStyle(Color.white)
            
                
                Text("Shop for clothes in a safe and sustainable way")
                    .font(.footnote)
                    .italic()
                    .foregroundStyle(Color.white)
                    
                    
                Spacer()
                
                NavigationLink(destination: SignUpView()) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundStyle(Color.white)
                            .frame(height: 40)
                        Text("Join Now")
                            .foregroundStyle(Color(red: 17/255, green: 134/255, blue: 119/255))
                    }
                }
                .padding(.top, 100)
                .padding(.horizontal, 30)
                
                HStack {
                    Text("Already have an account?")
                        .foregroundStyle(.white)
                    NavigationLink(destination: LogInView()) {
                        Text("Login")
                            .foregroundStyle(Color.white)
                            .bold()
                            .underline()
                    }
                }
                .padding(.top, 10)
                
                Spacer()
            }
            .background(bgColour)
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
