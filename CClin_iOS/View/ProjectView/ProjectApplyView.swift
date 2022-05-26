//
//  ProjetApplyView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/26.
//

import SwiftUI

struct ProjectApplyView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    let projectApplyModel = ProjectApplyModel.shared
    
    @State var personnelInput: String = ""
    @State var purposeInput: String = ""
    @State var requestsInput: String = ""
    @State var attachmentsInput: String = ""
    @State var urlInput: String = ""
    
    @State var isShowPopUp: Bool = false
    
    var body: some View {
        ZStack {
            ZStack(alignment: .bottom) {
                ScrollView {
                    VStack {
                        VStack(alignment: .leading) {
                            HStack {
                                Text("D-30")
                                    .foregroundColor(Color.black)
                                    .font(SpoqaHanSansNeo.bold(size: 20))
                                    .padding(.vertical, 6)
                                    .padding(.horizontal, 17)
                                    .background(
                                        RoundedRectangle(cornerRadius: 5)
                                            .foregroundColor(Color(hex: "E0E0E0")))
                                
                                Spacer()
                            }
                            .padding(.bottom, 10)
                            
                            Text("# 경쟁   # 아이디어 공모   # 브랜드 홍보   # 기획")
                                .foregroundColor(Color(hex: "DFDFDF"))
                                .font(SpoqaHanSansNeo.bold(size: 13))
                                .padding(.bottom, 3)
                            
                            Text("IoT 서비스의 페르소나 설계 및 \n기획전 아이디어 공모")
                                .font(SpoqaHanSansNeo.bold(size: 17))
                                .padding(.bottom, 15)
                            
                            Text("(주)고퀄")
                                .foregroundColor(Color(hex: "CACACA"))
                                .font(SpoqaHanSansNeo.medium(size: 13))
                        }
                        .padding(.bottom, 22)
                        .padding(.horizontal, 31)
                        
                        Rectangle()
                            .frame(width: .infinity, height: 5)
                            .foregroundColor(Color.gray_button_line)
                        
                        VStack(spacing:30) {
                            HStack {
                                Text("참여 인원")
                                    .font(SpoqaHanSansNeo.bold(size: 13))
                                    .padding(.trailing, 30)
                                
                                TextField("", text:$personnelInput)
                                    .textFieldStyle(RoundTextFieldStyle(backgroundColor: Color.gray_bottom))
                            }
                            
                            HStack {
                                Text("참여 목적\n및 기대 효과")
                                    .font(SpoqaHanSansNeo.bold(size: 13))
                                    .padding(.trailing, 15)
                                
                                ZStack(alignment: .top) {
                                    Rectangle()
                                        .frame(width: 247, height: 200)
                                        .foregroundColor(Color.gray_bottom)
                                        .cornerRadius(5)
                                    
                                    TextEditor(text: $purposeInput)
                                        .colorMultiply(Color.gray_bottom)
                                        .padding(.vertical, 3)
                                        .padding(.horizontal,1)
                                }
                            }
                            
                            HStack {
                                Text("기타 요청\n 사항")
                                    .font(SpoqaHanSansNeo.bold(size: 13))
                                    .padding(.trailing, 30)
                                
                                ZStack(alignment: .top) {
                                    Rectangle()
                                        .frame(width: 247, height: 120)
                                        .foregroundColor(Color.gray_bottom)
                                        .cornerRadius(5)
                                    
                                    TextEditor(text: $requestsInput)
                                        .colorMultiply(Color.gray_bottom)
                                        .padding(.vertical, 3)
                                        .padding(.horizontal,1)
                                }
                            }
                            
                            HStack {
                                VStack {
                                    Text("첨부 파일")
                                        .font(SpoqaHanSansNeo.bold(size: 13))
                                        .padding(.trailing, 30)
                                    
                                    Spacer()
                                }
                                
                                VStack(alignment: .leading) {
                                    Rectangle()
                                        .frame(width: 247, height: 35)
                                        .foregroundColor(Color.gray_bottom)
                                        .cornerRadius(5)
                                    
                                    HStack {
                                        Button {
                                            //
                                        } label: {
                                            Text("파일 선택")
                                                .foregroundColor(Color.white)
                                                .font(SpoqaHanSansNeo.medium(size: 10))
                                                .padding(.vertical, 10)
                                                .padding(.horizontal, 15)
                                                .background(Color(hex: "9E9E9E"))
                                                .cornerRadius(5)
                                        }
                                        
                                        Text("500Mb 이하의 파일만 업로드 가능")
                                            .foregroundColor(Color(hex: "9E9E9E"))
                                            .font(SpoqaHanSansNeo.medium(size: 10))
                                        
                                        Spacer()
                                    }
                                    
                                }
                                
                            }
                            
                            HStack {
                                Text("링크 첨부")
                                    .font(SpoqaHanSansNeo.bold(size: 13))
                                    .padding(.trailing, 30)
                                
                                TextField("", text:$urlInput)
                                    .textFieldStyle(RoundTextFieldStyle(backgroundColor: Color.gray_bottom))
                            }
                            
                        }
                        .padding(.top, 22)
                        .padding(.horizontal, 31)
                    }
                    Spacer()
                        .frame( height: 180)
                }
                .padding(.top, 120)
                
                LargeButton(title: "등록하기", backgroundColor: Color.main_club, foregroundColor: Color.white) {
                    
                    projectApplyModel.personnel = personnelInput
                    projectApplyModel.purpose = purposeInput
                    projectApplyModel.requests = requestsInput
                    projectApplyModel.attachments = attachmentsInput
                    projectApplyModel.link = urlInput
                    
                    isShowPopUp = true
                }
                .padding(.horizontal, 31)
                .padding(.bottom, 100)
                
                if isShowPopUp {
                    Rectangle()
                        .foregroundColor(Color(hex: "3E3E3E"))
                        .opacity(0.7)
                        .frame(width: .infinity, height: .infinity)
                }
            }
            
            ZStack(alignment: .center) {
                ApplyPopUpView(isShow: $isShowPopUp)
            }
            
        }
        .ignoresSafeArea()
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
                Text("프로젝트 신청하기")
                    .foregroundColor(Color.black)
                    .font(SpoqaHanSansNeo.bold(size: 20))
                    .padding(.leading, 15)
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    //
                } label: {
                    Image("ic_mypage")
                        .padding(.trailing, 15)
                }
            }
        }
    }
}

struct ProjectApplyView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectApplyView()
    }
}
