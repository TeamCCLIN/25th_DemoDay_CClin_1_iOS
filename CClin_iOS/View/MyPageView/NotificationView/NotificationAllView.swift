//
//  NotificationAllView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/21.
//

import SwiftUI

struct NotificationAllView: View {
    var body: some View {
        ScrollView {
            VStack {
                NotificationRowView(notCheckedImage: "ic_notification_disable", isChecked: false, date: "05/15 23:57", title: "한국대학생IT경영학회 큐시즘", description: "기업 프로젝트 개요 및 구체적인 과제에 대한 pdf 자료를 끌린 채팅으")
                
                NotificationRowView(notCheckedImage: "ic_notification_disable", isChecked: false, date: "05/15 23:57", title: "고퀄", description: "‘5/16 IoT 제품 협...’글이 제휴/협찬에 성공적으로 게시되었습니다!")
                
                NotificationRowView(notCheckedImage: "ic_notification_disable", isChecked: false, date: "05/15 23:57", title: "한국대학생IT경영학회 큐시즘", description: "기업 프로젝트 개요 및 구체적인 과제에 대한 pdf 자료를 끌린 채팅으")
                
                NotificationRowView(notCheckedImage: "ic_notification_disable", isChecked: false, date: "05/15 23:57", title: "한국대학생IT경영학회 큐시즘", description: "기업 프로젝트 개요 및 구체적인 과제에 대한 pdf 자료를 끌린 채팅으")
                
                NotificationRowView(notCheckedImage: "ic_notification_disable", isChecked: true, date: "05/15 23:57", title: "한국대학생IT경영학회 큐시즘", description: "기업 프로젝트 개요 및 구체적인 과제에 대한 pdf 자료를 끌린 채팅으")
                
                NotificationRowView(notCheckedImage: "ic_notification_disable", isChecked: true, date: "05/15 23:57", title: "한국대학생IT경영학회 큐시즘", description: "기업 프로젝트 개요 및 구체적인 과제에 대한 pdf 자료를 끌린 채팅으")
                
                NotificationRowView(notCheckedImage: "ic_notification_disable", isChecked: true, date: "05/15 23:57", title: "한국대학생IT경영학회 큐시즘", description: "기업 프로젝트 개요 및 구체적인 과제에 대한 pdf 자료를 끌린 채팅으")
                
                NotificationRowView(notCheckedImage: "ic_notification_disable", isChecked: true, date: "05/15 23:57", title: "한국대학생IT경영학회 큐시즘", description: "기업 프로젝트 개요 및 구체적인 과제에 대한 pdf 자료를 끌린 채팅으")
                
                NotificationRowView(notCheckedImage: "ic_notification_disable", isChecked: true, date: "05/15 23:57", title: "한국대학생IT경영학회 큐시즘", description: "기업 프로젝트 개요 및 구체적인 과제에 대한 pdf 자료를 끌린 채팅으")
                
                ForEach(0..<10, id:\.self) { i in
                    NotificationRowView(notCheckedImage: "ic_notification_disable", isChecked: true, date: "05/15 23:57", title: "한국대학생IT경영학회 큐시즘", description: "기업 프로젝트 개요 및 구체적인 과제에 대한 pdf 자료를 끌린 채팅으")
                }
            }
            .padding(.horizontal, 9)
        }
    }
}

struct NotificationAllView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationAllView()
    }
}
