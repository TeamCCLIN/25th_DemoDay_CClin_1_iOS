//
//  ApplyPopUpView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/26.
//

import SwiftUI

struct ApplyPopUpView: View {
    
    @Binding var isShow: Bool
    @State var isPostedApplyProjectViewActive: Bool = false
    
    var body: some View {
        ZStack(alignment: .center) {
            if isShow {
                VStack {
                    HStack {
                        Text("(주) 고퀄")
                            .foregroundColor(Color(hex: "A7A7A7"))
                            .font(SpoqaHanSansNeo.medium(size: 15))
                        
                        Spacer()
                        
                        Button {
                            isShow = false
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 10)
                                .foregroundColor(Color.black)
                        }
                        
                    }
                    .padding(.bottom, 29)
                    
                    HStack {
                        Text("IoT 서비스의 페르소나 설계 및 기획전 아이디어 공모")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.bold(size: 17))
            
                        Spacer()
                    }
                    .padding(.bottom, 15)
                  
                    Text("위 프로젝트에 대한 ‘큐시즘’의 참가 신청이 완료되었습니다. 푸시 알림을 통해 진행 상황을 공유 받고, 마이페이지에서 신청 현황을 확인할 수 있습니다.")
                        .font(SpoqaHanSansNeo.medium(size: 13))
                        .padding(.bottom, 30)
                 
                    LargeButton(title: "확인하기", backgroundColor: Color.main_club, foregroundColor: Color.white) {
                        isPostedApplyProjectViewActive = true
                    }
                    .background(
                        NavigationLink(isActive: $isPostedApplyProjectViewActive, destination: {
                            PostedApplyProjectView()
                        }, label: {
                            EmptyView()
                        })
                    )
                    .padding(.bottom, 10)
                    
                    Button {
                        //
                    } label: {
                        Text("신청을 취소하고 싶어요")
                            .foregroundColor(Color(hex: "9E9E9E"))
                            .font(SpoqaHanSansNeo.medium(size: 11))
                            .underline()
                    }
                }
                .padding(.horizontal, 27)
                .padding(.vertical, 30)
            }
        }
        .background(Color.white)
        .cornerRadius(5)
        .frame(width: 309)
        
    }
}

struct ApplyPopUpView_Previews: PreviewProvider {
    static var previews: some View {
        ApplyPopUpView(isShow: .constant(true))
    }
}
