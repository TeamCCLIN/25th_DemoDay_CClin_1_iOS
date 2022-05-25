//
//  MyProjectView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/25.
//

import SwiftUI

struct MyProjectView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var selectProjectType: Int = 0
    
    var body: some View {
        VStack {
            Picker("", selection: $selectProjectType ) {
                Text("선정 중").tag(0)
                Text("진행 중").tag(1)
                Text("진행 완료").tag(2)
            }
            .padding(.horizontal, 30)
            .pickerStyle(SegmentedPickerStyle())
            
            VStack {
                switch(selectProjectType) {
                case 0: ProjectWaitingView()
                case 1: ProjectWaitingView()
                default:
                    ProjectWaitingView()
                }
                
            }
            .padding(.top, 24)
        }
        .padding(.top, 24)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("나의 프로젝트")
                    .font(SpoqaHanSansNeo.bold(size: 20))
            }
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

struct MyProjectView_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectView()
    }
}
