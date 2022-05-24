//
//  ShowPostingView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/24.
//

import SwiftUI

struct ShowPostedView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @Binding var title: String
    @Binding var description: String
    @Binding var date: String
    
    @State var isMyPageViewActive: Bool = false
    @State var inputComment: String = ""
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                VStack {
                    VStack {
                        HStack {
                            Image("logo_kusitsm")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 46)
                                .cornerRadius(5)
                                .padding(.trailing, 11)
                            
                            VStack(alignment: .leading) {
                                Text("한국대학생IT경영학회")
                                    .font(SpoqaHanSansNeo.bold(size: 13))
                                    .padding(.bottom, 3)
                                
                                Text(date)
                                    .foregroundColor(Color(hex: "D8D8D8"))
                                    .font(SpoqaHanSansNeo.regular(size: 11))
                                
                            }
                            Spacer()
                        }
                        .padding(.bottom, 15)
                        
                        VStack() {
                            HStack {
                                Text(title)
                                    .font(SpoqaHanSansNeo.bold(size: 17))
                                    .padding(.bottom, 17)
                                
                                Spacer()
                            }
                            
                            HStack {
                                Text(description)
                                    .font(SpoqaHanSansNeo.medium(size: 13))
                                
                                Spacer()
                            }
                        }
                        .padding(.bottom, 27)
                        
                        HStack {
                            Spacer()
                            Image(systemName: "heart.fill")
                                .foregroundColor(Color.main_club)
                            Text("0")
                                .foregroundColor(Color(hex: "ACACAC"))
                        }
                        .font(SpoqaHanSansNeo.medium(size: 13))
                    }
                    .padding(.top, 30)
                    .padding(.horizontal, 31)
                    
                    Rectangle()
                        .foregroundColor(Color.gray_button_line)
                        .frame(height: 8)
                    
                }
            }
            TextField("", text:$inputComment)
                .keyboardType(.default)
                .textFieldStyle(RoundTextFieldStyle(backgroundColor: Color.gray_bottom))
                .overlay(
                    HStack {
                        Spacer()
                        
                        Rectangle()
                            .frame(width: 1, height: 22)
                            .foregroundColor(Color.gray_bottom_text)
                            .padding(.trailing, 15)
                        
                        Button {
                           //
                        } label: {
                            Text("게시")
                                .foregroundColor(Color.gray_bottom_text)
                                .font(SpoqaHanSansNeo.medium(size: 11))
                        }
                        .padding(.trailing, 17)
                    })
                .padding(.horizontal, 31)
                .padding(.bottom, 30)
        }
        .navigationTitle("제휴/협찬")
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
               Text("제휴/협찬")
                    .font(SpoqaHanSansNeo.bold(size: 20))
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    isMyPageViewActive = true
                } label: {
                    Image("ic_mypage")
                        .padding(.trailing, 15)
                }
                .background(
                    NavigationLink(isActive: $isMyPageViewActive, destination: {
                        ClubMyPageView()
                    }, label: {
                        EmptyView()
                    })
                )
            }
        }
    }
}

struct ShowPostedView_Previews: PreviewProvider {
    static var previews: some View {
        ShowPostedView(title: .constant("title"), description: .constant("description"), date: .constant("now"))
    }
}
