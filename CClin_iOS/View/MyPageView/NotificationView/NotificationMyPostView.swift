//
//  NotificationMyPostView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/21.
//

import SwiftUI

struct NotificationMyPostView: View {
    var body: some View {
        ScrollView {
        VStack {
            NotificationRowView(notCheckedImage: "ic_notification_disable", isChecked: false, date: "05/15 23:57", title: "한국대학생IT경영학회 큐시즘", description: "기업 프로젝트 개요 및 구체적인 과제에 대한 pdf 자료를 끌린 채팅으")
            
            NotificationRowView(notCheckedImage: "ic_checkmark", isChecked: true, date: "05/15 23:57", title: "한국대학생IT경영학회 큐시즘", description: "기업 프로젝트 개요 및 구체적인 과제에 대한 pdf 자료를 끌린 채팅으")
            
            NotificationRowView(notCheckedImage: "ic_checkmark", isChecked: true, date: "05/15 23:57", title: "한국대학생IT경영학회 큐시즘", description: "기업 프로젝트 개요 및 구체적인 과제에 대한 pdf 자료를 끌린 채팅으")
            
            NotificationRowView(notCheckedImage: "ic_notification_disable", isChecked: true, date: "05/15 23:57", title: "한국대학생IT경영학회 큐시즘", description: "기업 프로젝트 개요 및 구체적인 과제에 대한 pdf 자료를 끌린 채팅으")
            
            NotificationRowView(notCheckedImage: "ic_notification_disable", isChecked: true, date: "05/15 23:57", title: "한국대학생IT경영학회 큐시즘", description: "기업 프로젝트 개요 및 구체적인 과제에 대한 pdf 자료를 끌린 채팅으")
            
            NotificationRowView(notCheckedImage: "ic_notification_disable", isChecked: true, date: "05/15 23:57", title: "한국대학생IT경영학회 큐시즘", description: "기업 프로젝트 개요 및 구체적인 과제에 대한 pdf 자료를 끌린 채팅으")
            
            NotificationRowView(notCheckedImage: "ic_checkmark", isChecked: true, date: "05/15 23:57", title: "한국대학생IT경영학회 큐시즘", description: "기업 프로젝트 개요 및 구체적인 과제에 대한 pdf 자료를 끌린 채팅으")
            
            ForEach(0..<10, id:\.self) { i in
               EmptyView()
            }

            
        }
        .padding(.horizontal, 9)
        }
    }
}

struct NotificationMyPostView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationMyPostView()
    }
}
