//
//  MyProjectDetailView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/25.
//

import SwiftUI

struct MyProjectDetailView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var isParticipatedClubViewActive: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            // Project Detail View
            
            LargeButton(title: "참여한 학생 단체 확인하기", backgroundColor: Color.main_club, foregroundColor: Color.white) {
                isParticipatedClubViewActive = true
            }
            .background(
                NavigationLink(isActive: $isParticipatedClubViewActive, destination: {
                    ParticipatedClubView()
                }, label: {
                    EmptyView()
                })
            )
            .padding(.horizontal, 35)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("나의 프로젝트")
                    .foregroundColor(Color.white)
                    .font(SpoqaHanSansNeo.bold(size: 20))
            }
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    self.mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(Color.white)
                        .font(SpoqaHanSansNeo.regular(size: 20))
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                HStack {
                    Image("ic_modify")
                        .padding(.trailing, 14)
                    Image("ic_delete")
                }
                .padding(.trailing, 20)
                
            }
        }
    }
}

struct MyProjectDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectDetailView()
    }
}
