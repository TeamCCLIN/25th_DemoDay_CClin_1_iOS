//
//  NotificationRowView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/21.
//

import SwiftUI

struct NotificationRowView: View {
    
    let checkedImage: String = "ic_notification"
    
    @State var notCheckedImage: String = "ic_notification_disable"
    @State var isChecked: Bool = true
    @State var date: String = "05/15 22:57"
    @State var title: String = "한국"
    @State var description: String = "설명설명"
    
    var body: some View {
        VStack {
            HStack {
                Image(isChecked ? notCheckedImage : checkedImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:21)
                    .padding(.trailing, 20)
                
                VStack(alignment: .leading) {
                    Text(date)
                        .font(SpoqaHanSansNeo.regular(size: 8))
                    Text(title)
                        .font(SpoqaHanSansNeo.bold(size: 11))
                    Text(description)
                        .font(SpoqaHanSansNeo.regular(size: 10))
                        .lineLimit(1)
                }
                .foregroundColor(isChecked ? Color(hex: "9E9E9E") : Color.black)
                
                Spacer()
            }
            .padding(.leading, 3)
            .padding(.vertical, 7)
            
            Rectangle()
                .frame(height:1)
                .foregroundColor(Color.gray_button_line)
        }
    }
}

struct NotificationRowView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationRowView()
    }
}
