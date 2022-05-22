//
//  NotifiacationMyCommentView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/21.
//

import SwiftUI

struct NotifiacationMyCommentView: View {
    var body: some View {
        ScrollView {
            VStack {
                NotificationRowView(notCheckedImage: "ic_notification_disable", isChecked: true, date: "05/15 23:57", title: "한국대학생IT경영학회 ", description: "‘한국대학생IT경...’님이 회원님의 댓글을 좋아합니다.")
                
                NotificationRowView(notCheckedImage: "ic_notification_disable", isChecked: true, date: "05/15 23:57", title: "한국대학생IT경영학회 ", description: "5월 밋업데이 평가...’글에 답글이 달렸습니다.")
            }
            .padding(.horizontal, 9)
        }
    }
}

struct NotifiacationMyCommentView_Previews: PreviewProvider {
    static var previews: some View {
        NotifiacationMyCommentView()
    }
}
