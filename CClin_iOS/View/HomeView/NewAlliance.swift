//
//  newAlliance.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/14.
//

import SwiftUI

struct NewAlliance: View {
    @State var imgaeUrl: String = "hot_alliance"
    @State var dday: Int = 102
    @State var title: String = "title"
    @State var companyName: String = "name"
    @State var heartCnt: Int = 0
    @State var commentCnt: Int = 0
    
    var body: some View {
        VStack {
            HStack {
                Image(imgaeUrl)
                    .resizable()
                    .frame(width: 77, height: 56)
                    .cornerRadius(5)
                    .padding(.trailing, 10)
                
                VStack {
                    HStack {
                        Text("D-\(dday)")
                            .foregroundColor(Color.main_club)
                            .font(SpoqaHanSansNeo.bold(size: 11))
                        
                        Text(companyName)
                            .foregroundColor(Color(hex: "ACACAC"))
                            .font(SpoqaHanSansNeo.medium(size: 11))
                            .padding(.trailing, 22)
                        
                        Spacer()
                        
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 8, height: 6)
                            .foregroundColor(Color.main_club)
                        
                        Text("\(heartCnt)")
                            .foregroundColor(Color(hex: "ACACAC"))
                            .font(SpoqaHanSansNeo.medium(size: 11))
                        
                    }
                    
                    HStack {
                        Text(title)
                            .font(SpoqaHanSansNeo.bold(size: 13))
                        
                        Spacer()
                    }
                    
                }
            }
            
            Rectangle()
                .frame(height:1)
                .foregroundColor(Color.gray_button_line)
        }
    }
}

struct newAlliance_Previews: PreviewProvider {
    static var previews: some View {
        NewAlliance()
    }
}
