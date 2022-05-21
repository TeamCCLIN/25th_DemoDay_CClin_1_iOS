//
//  HotProjectRowView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/21.
//

import SwiftUI

struct HotProjectRowView: View {
    
    @State var image: String = ""
    @State var title: String = ""
    @State var heartCnt: Int = 0
    @State var companyName: String = ""
    @State var clickedHeart: Bool = false
    
    var body: some View {
        VStack {
            Image("hot_project")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 131)
                .cornerRadius(5)
                .padding(.bottom, 11)
            
            Text(title)
                .font(SpoqaHanSansNeo.bold(size: 13))
                .lineLimit(2)
             
            
            HStack {
                Image(systemName: "heart.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 10)
                    .foregroundColor(clickedHeart ? Color.main_club : Color.gray_icon)
                
                Text(String(heartCnt))
                    .foregroundColor(Color(hex: "ACACAC"))
                    .font(SpoqaHanSansNeo.medium(size: 11))
                
                Spacer()
                
                Text(companyName)
                    .foregroundColor(Color(hex: "ACACAC"))
                    .font(SpoqaHanSansNeo.medium(size: 11))
            }
        }
        .padding(.horizontal, 9)
        .padding(.top, 9)
        .padding(.bottom, 7)
        .frame(width: 149, height: 235)
        .background(clickedHeart ? Color(hex: "F27953").opacity(0.1) : nil)
        .border(Color(hex: "F5F5F5"), width: 1)
        .background(Color.white
                        .shadow(color: Color.gray, radius: 1, x: 0, y: 0))
        .cornerRadius(5)
        
        
//        .background(
//        RoundedRectangle(cornerRadius: 5)
//            .stroke(Color(hex: "F5F5F5"))
//            .shadow(color: Color.gray_bottom, radius: 10, x: 0, y: 0))

    }
}

struct HotProjectRowView_Previews: PreviewProvider {
    static var previews: some View {
        HotProjectRowView(image: "hot_project", title: "드론 적재 시스템과 시스템 운영 개념 수립", heartCnt: 124, companyName: "파블로항공", clickedHeart: true)
    }
}
