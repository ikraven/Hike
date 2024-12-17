//
//  CardView.swift
//  Hike
//
//  Created by Borja Suñen on 8/12/24.
//

import SwiftUI

struct CardView: View {
    //MARK: - PROPERTIES
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    //MARK: - FUNCTIONS
    
    func randomImage() {
        print("-- BUTTON WAS PRESSED --")
        print("Status: Old Numer = \(imageNumber))")
        repeat{
            randomNumber = Int.random(in: 1...5)
            print("Action: Random numer generated = \(randomNumber))")
        }while randomNumber == imageNumber
        
        imageNumber = randomNumber
        
        print("-- THE END --")
        print("\n")
    }
    
    var body: some View {
        // MARK: - CARD
        ZStack {
            CustomBackgorundView()
            VStack {
                //MARK: - HEADER
                VStack(alignment: .leading) {
                    HStack {
                        Text("Card")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.CustomGrayLight
                                             , .CustomGrayMedium],
                                    startPoint: .top,
                                    endPoint: .bottom)
                            )
                        Spacer()
                        Button{
                            // ACTION: Show a sheet
                            print("Button pressed")
                            isShowingSheet.toggle()
                        } label: {
                            CustonButtonVIew()
                        }
                        .sheet(isPresented: $isShowingSheet){
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium,.large])
                        }
                    }
                    Text("Fun and enjoyable outodoor acrivity for friends")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.CustomGrayMedium)
                }//: HEADER
                .padding(.horizontal, 30)
     
                
                //MARK: - MAIN CONTENT
            
                ZStack {
                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(_: .easeInOut)
                }
                //MARK: - FOOTER
                
                Button(){
                    //ACTION
                    randomImage()
                }
                    label:{
                        Text("Explore More")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .CustomGreenLight,
                                        .CustomGreenMedium],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                            .shadow(color: .black.opacity(0.25),
                                    radius: 0.25, x: 1, y: 2)
                    }
                    .buttonStyle(GradientButton())
                
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
