//
//  ProjectWaitingView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/25.
//

import SwiftUI

struct ProjectWaitingView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var isProjectDetailViewActive: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                Button {
                    isProjectDetailViewActive = true
                } label: {
                    ProjectRowView(imgaeUrl: "project_1_1", category: "#경쟁 #아이디어 공모 #브랜드 홍보 #기획", title: "IoT 서비스의 페르소나 설계 및 기획전 아이디어 공모", companyName: "(주)고퀄")
                }
                .background(
                    NavigationLink(isActive: $isProjectDetailViewActive, destination: {
                        MyProjectDetailView()
                    }, label: {
                        EmptyView()
                    })
                )
            }
        }
    }
}

struct ProjectWaitingView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectWaitingView()
    }
}
