//
//  NotificationView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/21.
//

import SwiftUI

struct NotificationView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var selectNotificationType: Int = 0
    
    var body: some View {
        VStack {
            Picker("", selection: $selectNotificationType ) {
                Text("전체").tag(0)
                Text("내 게시글").tag(1)
                Text("내 댓글").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            VStack {
                switch(selectNotificationType) {
                case 0: NotificationAllView()
                case 1: NotificationMyPostView()
                case 2: NotifiacationMyCommentView()
                default:
                    NotificationAllView()
                }
            
            }
            .padding(.top, 24)
        }
        .padding(.horizontal, 15)
        .padding(.top, 24)
        .navigationBarTitle("알림")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    self.mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(Color.black)
                        .font(SpoqaHanSansNeo.regular(size: 20))
                }
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
