//
//  NotificationRowView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/21.
//

import SwiftUI

struct NotificationRow: Hashable {
    var checkedImage: String = ""
    var notCheckedImage: String = ""
    var isChecked: Bool = false
    var date: String = ""
    var title: String = ""
    var description: String = ""
}

struct NotificationRowView: View {
    
    @State var checkedImage: String = "ic_notification"
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
                    .padding(.trailing, 23)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text(title)
                            .foregroundColor(isChecked ? Color.gray_icon : Color.gray_text)
                            .font(SpoqaHanSansNeo.medium(size: 11))
                        
                        Spacer()
                        
                        Text(date)
                            .foregroundColor(isChecked ? Color.gray_button_line : Color.gray_bottom_text)
                            .font(SpoqaHanSansNeo.regular(size: 11))
                    }
                    .padding(.bottom, 8)
                  
                    Text(description)
                        .foregroundColor(isChecked ? Color.gray_text : Color.black)
                        .font(SpoqaHanSansNeo.regular(size: 13))
                        .lineLimit(2)
                }
                Spacer()
            }
            .padding(.leading, 3)
            .padding(.vertical, 8)
            
            Rectangle()
                .frame(height:1)
                .foregroundColor(Color.gray_button_line)
        }
        .padding(.horizontal, 30)
    }
}

struct NotificationRowView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationRowView()
    }
}
