//
//  NotifiacationMyCommentView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/21.
//

import SwiftUI

struct NotifiacationMyCommentView: View {
    
    @State var notificationMyCommentArray: [NotificationRow] = [
    NotificationRow(checkedImage: "ic_notification", notCheckedImage: "ic_notification_disable", isChecked: false, date: "05/15  23:57", title: "한국대학생IT경영학회", description: "‘기업 프로젝트 평...’ 댓글에 답글이 달렸습니다"),
    NotificationRow(checkedImage: "ic_notification", notCheckedImage: "ic_complete", isChecked: false, date: "05/15 11:22", title: "원큐", description: "‘강연할 장소 협찬...’ 게시글에 작성한 댓글에 답글이 달렸습니다"),
    NotificationRow(checkedImage: "ic_notification",notCheckedImage:  "ic_complete", isChecked: true, date: "05/14 00:57", title: "고퀄", description: "‘강연할 장소 협찬...’ 게시글에 성공적으로 댓글이 게시되었습니다"),
    NotificationRow(notCheckedImage: "ic_notification_disable", isChecked: true, date: "05/12 22:23", title: "한국대학생IT경영학회", description: "‘5월 쇼룸 방문  체...’글을 좋아합니다"),
    NotificationRow(notCheckedImage: "ic_notification_disable", isChecked: true, date: "05/03 11:02", title: "한국대학생IT경영학회 큐시즘", description: "‘‘5월 쇼룸 방문  체...’글에 댓글이  달렸습니다"),
    NotificationRow(notCheckedImage: "ic_complete", isChecked: true, date: "05/15 11:28", title: "한국대학생IT경영학회 큐시즘", description: "‘‘기업 프로젝트 평...’ 게시글에 성공적으로 댓글이 게시되었습니다"),
    NotificationRow(checkedImage: "ic_notification_check", notCheckedImage: "ic_complete", isChecked: true, date: "05/15 23:32", title: "고퀄", description: "‘5월 쇼룸 방문 체...'에 성공적으로 댓글이 게시되었습니다")
   
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(notificationMyCommentArray, id:\.self) { raw in
                    NotificationRowView(checkedImage: raw.checkedImage, notCheckedImage: raw.notCheckedImage, isChecked: raw.isChecked, date: raw.date, title: raw.title, description: raw.description)
                }
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
