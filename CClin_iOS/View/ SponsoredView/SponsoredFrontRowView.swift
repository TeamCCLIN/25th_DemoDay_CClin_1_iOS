//
//  SponsoredFrontRowView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/23.
//

import SwiftUI

struct ADRowView: View {
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(Color.white)
                .frame(width: 3, height: 59)
                .padding(.trailing, 8)
            
            VStack {
                Text("AD")
                    .font(SpoqaHanSansNeo.medium(size: 11))
                    .foregroundColor(Color.gray_text)
                
                Spacer()
            }
        }
    }
}

struct SponsoredFrontRowView: View {
    
    @State var type: String = ""
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(type == "기업" ? Color.main_company : Color(hex: "FFDA00"))
                .frame(width: 3, height: 59)
                .padding(.trailing, 8)
            
            VStack {
                if type == "기업" {
                    Text(type)

                }
                else {
                    Text("학생")
                    Text("단체")
                }
                
                Spacer()
            }
            .font(SpoqaHanSansNeo.medium(size: 11))
            .foregroundColor(Color.gray_text)
        }
    }
}
