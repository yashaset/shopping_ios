//
//  OnboardingScreenView.swift
//  shopping
//
//  Created by Yash on 27/04/24.
//

import SwiftUI

struct OnboardingScreenView: View {
    var body: some View {
        NavigationView{
            VStack(spacing:30){
            
                Image("img").resizable().aspectRatio( contentMode: .fill).padding()
                
                VStack(alignment:.leading, spacing:10){
                    Text("Order Your Favorite Fruits").font(.system(size: 50))
                        .font(.largeTitle).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    Text("Eat fresh fruits and try to be healthy")
                        .font(.system(.title3))
                        .fontWeight(.regular).opacity(0.5)
                }
                Spacer()
                NavigationLink(destination: HomeScreen()) {
                    RoundedRectangle(cornerRadius: 12).fill(Color("6")).frame(width: 280, height: 60, alignment: .trailing).overlay(HStack(spacing: 10){
                        Text("Next").font(.title).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Image(systemName: "chevron.right")
                    }
                
                    ).foregroundColor(.black)
                   
                }
                Spacer()
                    
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    OnboardingScreenView()
}
