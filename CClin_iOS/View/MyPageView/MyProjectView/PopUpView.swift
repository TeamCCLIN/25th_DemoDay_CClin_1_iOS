//
//  PopUpView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/25.
//

import SwiftUI

struct PopUpView: View {
    
    @Binding var selectedClubList: [String]
    @Binding var isShow: Bool
    
    @State var isMyProjectViewActive: Bool = false
    
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
                            .padding(.bottom, 35)
                        
                        Spacer()
                    }
                    
                    VStack {
                        ForEach(selectedClubList, id:\.self) { club in
                            Text(club)
                                .foregroundColor(Color.main_club)
                                .font(SpoqaHanSansNeo.bold(size: 15))
                                .padding(.bottom, 5)
                        }
                    }
                    .padding(.bottom, 27)
                    
                    Text("\(selectedClubList.count)개의 학생 단체를 선정하셨습니다.")
                        .font(SpoqaHanSansNeo.medium(size: 13))
                        .padding(.bottom, 18)
                    
                    LargeButton(title: "확정하고 알림 보내기", backgroundColor: Color.main_club, foregroundColor: Color.white) {
                        isMyProjectViewActive = true
                    }
                    .background(
                        NavigationLink(isActive: $isMyProjectViewActive, destination: {
                            MyProjectView(selectProjectType: 1)
                        }, label: {
                            EmptyView()
                        })
                    )
                    .padding(.bottom, 10)
                    
                    Button {
                        //
                    } label: {
                        Text("신청 리스트를 다시 보고 싶어요")
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

struct PopUpView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpView(selectedClubList: .constant(["원큐", "큐시즘"]), isShow: .constant(true))
    }
}
