//
//  HotCompanyView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/21.
//

import SwiftUI

struct HotCompanyRowView: View {
    
    @State var image: String = "logo_kakao"
    @State var name: String = "(주)카카오페이"
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 74)
                .padding(.bottom, 7)
            
            Text(name)
                .font(SpoqaHanSansNeo.medium(size: 11))
                .foregroundColor(Color(hex: "ACACAC"))
        }
    }
}

struct HotCompanyRowView_Previews: PreviewProvider {
    static var previews: some View {
        HotCompanyRowView()
    }
}
