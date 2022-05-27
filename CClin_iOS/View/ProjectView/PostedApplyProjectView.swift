//
//  PostedApplyProjectView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/26.
//

import SwiftUI

struct PostedApplyProjectView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    let projectApplyModel = ProjectApplyModel.shared
    
    var body: some View {
        ScrollView{
            VStack {
                HStack {
                    Image("logo_1q")
                        .resizable()
                        .frame(width: 84, height: 84)
                        .cornerRadius(5)
                    
                    VStack(spacing: 8) {
                        HStack {
                            Text("# IT • 기술  |  회원 45명")
                                .foregroundColor(Color.main_club)
                                .font(SpoqaHanSansNeo.bold(size: 11))
                            
                            Spacer()
                            
                            Text("05/02 12:10")
                                .foregroundColor(Color(hex: "D8D8D8"))
                                .font(SpoqaHanSansNeo.medium(size: 11))
                        }
                        
                        HStack {
                            Text("원큐")
                            
                            Spacer()
                            
                            Button {
                                //
                            } label: {
                                Image(systemName: "chevron.forward")
                                    .foregroundColor(Color.gray_bottom_text)
                            }
                        }
                        .font(SpoqaHanSansNeo.bold(size: 15))
                        
                        HStack {
                            Text("서비스 끌린을 만드는 팀, 원큐입니다.")
                                .foregroundColor(Color.gray_text)
                                .font(SpoqaHanSansNeo.medium(size: 11))
                            
                            Spacer()
                        }
                    }
                }
                .padding(.bottom, 20)
                .padding(.horizontal, 31)
                
                Rectangle()
                    .foregroundColor(Color.gray_button_line)
                    .frame(width: .infinity, height: 5)
                
                VStack(spacing:30) {
                    HStack {
                        Text("참여 인원")
                            .font(SpoqaHanSansNeo.bold(size: 13))
                            .padding(.trailing, 30)
                        
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color.gray_bottom)
                            .frame(width: .infinity, height: 40)
                            .overlay(
                                HStack {
                                Text(projectApplyModel.personnel)
                                    .font(SpoqaHanSansNeo.regular(size: 13))
                                    .lineLimit(1)
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 10)
                                    
                                    Spacer()
                                }
                            )
                    }
                    
                    HStack {
                        Text("참여 목적\n및 기대 효과")
                            .font(SpoqaHanSansNeo.bold(size: 13))
                            .padding(.trailing, 15)
                        
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color.gray_bottom)
                            .frame(width: .infinity, height: 200)
                            .overlay(
                                VStack {
                                    HStack {
                                        Text(projectApplyModel.purpose)
                                            .font(SpoqaHanSansNeo.regular(size: 13))
                                            .padding(.vertical, 5)
                                            .padding(.horizontal, 10)
                                        Spacer()
                                    }
                                    Spacer()
                                }
                            )
                    }
                    
                    HStack {
                        Text("기타 요청\n 사항")
                            .font(SpoqaHanSansNeo.bold(size: 13))
                            .padding(.trailing, 30)
                        
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color.gray_bottom)
                            .frame(width: .infinity, height: 200)
                            .overlay(
                                VStack {
                                    HStack {
                                        Text(projectApplyModel.requests)
                                            .font(SpoqaHanSansNeo.regular(size: 13))
                                            .padding(.vertical, 5)
                                            .padding(.horizontal, 10)
                                        Spacer()
                                    }
                                    Spacer()
                                }
                            )
                    }
                    
                    HStack {
                        Text("첨부 파일")
                            .font(SpoqaHanSansNeo.bold(size: 13))
                            .padding(.trailing, 30)
                        
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color.gray_bottom)
                            .frame(width: .infinity, height: 40)
                            .overlay(
                                HStack {
                                    Text("")
                                        .lineLimit(1)
                                        .padding(.vertical, 5)
                                        .padding(.horizontal, 10)
                                    Spacer()
                                }
                            )
                    }
                    
                    HStack {
                        Text("링크 첨부")
                            .font(SpoqaHanSansNeo.bold(size: 13))
                            .padding(.trailing, 30)
                        
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color.gray_bottom)
                            .frame(width: .infinity, height: 40)
                            .overlay(
                                HStack {
                                    Text(projectApplyModel.link)
                                        .font(SpoqaHanSansNeo.regular(size: 13))
                                        .lineLimit(1)
                                        .padding(.vertical, 5)
                                        .padding(.horizontal, 10)
                                    Spacer()
                                }
                            )
                    }
                    
                }
                .padding(.top, 22)
                .padding(.horizontal, 31)
                
            }
        }
        .padding(.top, 20)
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
            
            ToolbarItem(placement: .principal) {
                Text("프로젝트 신청확인")
                    .foregroundColor(Color.black)
                    .font(SpoqaHanSansNeo.bold(size: 20))
                    .padding(.leading, 15)
            }
        }
    }
}

struct PostedApplyProjectView_Previews: PreviewProvider {
    static var previews: some View {
        PostedApplyProjectView()
    }
}
