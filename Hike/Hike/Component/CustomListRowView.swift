//
//  CustomListRowView.swift
//  Hike
//
//  Created by Borja Suñen on 16/12/24.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK: - PROPERTIES
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        LabeledContent{
        //Content
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
                
            }
            else if rowLinkLabel != nil && rowLinkDestination != nil{
                Link(rowLinkLabel!, destination: URL(string: rowLinkDestination!)!)
            }
            else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        }label: {
            //Label
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.black)
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List{
        CustomListRowView(
            rowLabel: "website",
            rowIcon: "globe",
            rowContent: nil,
            rowTintColor: .pink,
            rowLinkLabel: "Github Borja",
            rowLinkDestination: "https://www.google.com"
        )
    }
}
