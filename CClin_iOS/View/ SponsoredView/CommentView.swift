//
//  CommentView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/23.
//

import SwiftUI

struct Comment: Hashable {
    var image: String = ""
    var name: String = ""
    var date: String = ""
    var description: String = ""
}

struct CommentView: View {
    
    @State var image: String = "logo_readyme"
    @State var name: String = "레디미"
    @State var date: String = "05/18  07:12"
    @State var description: String = "자세한 프로젝트 진행 일정 및 평가 심사항목이 무엇인가요?"
    
    var body: some View {
        HStack(alignment: .top){
            Image(image)
                .resizable()
                .frame(width: 26, height: 26)
            
            VStack {
                HStack {
                    Text(name)
                        .font(SpoqaHanSansNeo.bold(size: 13))
                        .padding(.trailing, 15)
                    Text(date)
                        .foregroundColor(Color(hex: "D8D8D8"))
                        .font(SpoqaHanSansNeo.regular(size: 11))
                    
                    Spacer()

                }
                .padding(.bottom, 6)
                
                HStack {
                Text(description)
                    .foregroundColor(Color(hex: "9E9E9E"))
                    .font(SpoqaHanSansNeo.regular(size: 13))
                    
                    Spacer()
                }
            }
            
            Spacer()
        }
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView()
    }
}
