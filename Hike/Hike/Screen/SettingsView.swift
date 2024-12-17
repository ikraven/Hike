//
//  SettingsView.swift
//  Hike
//
//  Created by Borja Suñen on 16/12/24.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    
    private let alternateAppIcons: [String] =
    [
        "AppIcon-Backpack",
        "AppIcon-Camera",
        "AppIcon-Campfire",
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom"
    ]
        
    
    
    var body: some View {
        List{
            Section{
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editors Chouce")
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [.CustomGreenLight,.CustomGreenMedium, .CustomGreenDark],
                        startPoint: .top,
                        endPoint: .bottom)
                ).padding(.top, 8)
                
                VStack(spacing: 8){
                    Text("Where can you gind \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike witch looks gorgrus in photos but is even better once you are actually there. The hike that you hope yo do again someday. \nFind the best day hikes in dhe app")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.CustomGreenMedium)
                    
                }.multilineTextAlignment(.center)
                    .padding(.bottom, 16)
                    .frame(maxWidth: .infinity)
            }//: HEADER
            .listRowSeparator(.hidden)
           
            //MARK: - SECTION: ICONS
            Section(header: Text("Alternate icons")){
                ScrollView(.horizontal, showsIndicators: false)
                {
                    HStack(spacing: 12) {
                        ForEach( alternateAppIcons.indices, id: \.self) { item in
                            Button{
                                print("Icon \(alternateAppIcons[item]) was pressed")
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item]){
                                    error in
                                    if error != nil{
                                        print("Failed request to update: \(String(describing: error?.localizedDescription))")
                                    }else{
                                        print("Success!")
                                    }
                                }
                            }label:{
                                Image("\(alternateAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(16)
                            }
                        }
                    }
                }//: SCroll View
                .padding(.top, 12)
                
                Text("Choose your favourite app ivon from the collectiomn above.")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
            }
            //MARK: - SECTION: ABOUT
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack{
                    Spacer()
                    Text("Copytighy All Right Reserved.")
                    Spacer()
                }.padding(.vertical, 8)
                
            ){
                //1. Basic labeled content
                // LabeledContent("Application", value: "Hike")
                
                //1. Advanced labeled content
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                
                CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                
                CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                
                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Borja Sunen", rowTintColor: .mint)
                
                
            }//: SECTION
            
        }//: LIST
       
    }
}

#Preview {
    SettingsView()
}
