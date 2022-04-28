//
//  OnBoardingView.swift
//  MeditationDmitriev
//
//  Created by Student on 28.04.2022.
//

import SwiftUI

struct OnBoardingView: View {
    
    @State var SignIn = false
    
    var body: some View {
        ZStack {
            VStack {
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()
                    .aspectRatio(contentMode: .fill)
                Rectangle()
                    .fill(Color("DarkGreen"))
                    .frame(height: 50.0)
                    .padding(.top, -10)
                    .padding(.bottom, -20)
                    .ignoresSafeArea()
            }
            VStack {
                Image("LogoWithShadow")
                Text("Привет")
                Text("Наслаждайся отборочными.")
                Text("Будь внимателен.")
                Text("Делай хорошо.")
                
                Button(action:{
                    SignIn.toggle()
                }) {
                    Text("Войти в аккаунт")
                }
                NavigationLink(destination: SignInView(), isActive: $SignIn){
                    
                }
                
                HStack {
                    Text("Еще нет аккаунта?")
                    Text("Зарегистрируйтесь")
                        .bold()
                }
            }
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            OnBoardingView()
                .navigationBarHidden(true)
        }
    }
}
