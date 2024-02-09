import SwiftUI

struct WelcomeView: View {
    @Environment(\.dismiss) var dismiss
    @State var selectedViewIndex = 0

    var body: some View {
        ZStack {
            if selectedViewIndex == 0 {
                Color(red: 111/255, green: 154/255, blue: 189/255)
            }
            else if selectedViewIndex == 1 {
                Color(red: 139/255, green: 166/255, blue: 65/255)
            }
            else {
                Color(red: 227/255, green: 188/225, blue: 208/255)
            }
            
            TabView(selection: $selectedViewIndex) {
                WelcomeViewDetails(bgColor: Color(red: 111/255, green: 154/255, blue: 189/255), headline: "Welcome to ThriftMe", subHeadline: "ThriftMe helps you shop for clothes sustainably!") {
                    withAnimation{
                        selectedViewIndex = 1
                    }
                }
                .tag(0)
                .ignoresSafeArea()
                
                WelcomeViewDetails(bgColor: Color(red: 139/255, green: 166/255, blue: 65/255), headline: "Discover ", subHeadline: "We'll help you shop for clothes that fit you perfectly!") {
                    withAnimation{
                        selectedViewIndex = 2
                    }
                }
                .tag(1)
                .ignoresSafeArea()
                
                AuthenticationPage()
                .tag(2)
                .ignoresSafeArea()
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            
            VStack {
                Spacer()
                HStack (spacing: 16) {
                    Spacer()
                    Circle()
                        .frame(width: 10)
                        .foregroundColor(selectedViewIndex == 0 ? .white: .gray)
                    Circle()
                        .frame(width: 10)
                        .foregroundColor(selectedViewIndex == 1 ? .white: .gray)
                    Circle()
                        .frame(width: 10)
                        .foregroundColor(selectedViewIndex == 2 ? .white: .gray)
                    Spacer()
                }
                .padding(.bottom, 220)
            }
        }
        .ignoresSafeArea()
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
