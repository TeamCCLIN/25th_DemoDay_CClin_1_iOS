//
//  PostingView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/24.
//

import SwiftUI

enum writingType: String, CaseIterable{
    case alliance = "제휴"
    case sponsored = "협찬"
}

struct PostingView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var selectedType: writingType = .alliance
    @State var title: String = ""
    @State var description: String = ""
    @State var today = ""
    @State var isShowPostedViewActived: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                ForEach(writingType.allCases, id: \.self) { type in
                    Button {
                        selectedType = type
                        
                    } label: {
                        HStack {
                            ZStack {
                                Circle()
                                    .strokeBorder(selectedType == type ? Color.main_club : Color(hex: "DADADA"))
                                    .frame(height: 21)
                                
                                Circle()
                                    .frame(height: 19)
                                    .foregroundColor(selectedType == type ? Color.main_club : Color.white)
                            }
                            .frame(width: 25, height: 25)
                            Text(type.rawValue)
                                .foregroundColor(Color.black)
                                .font(selectedType == type ? SpoqaHanSansNeo.bold(size: 13) : SpoqaHanSansNeo.medium(size: 13))
                        }
                        .padding(.trailing, 23)
                        
                    }
                    
                }
                
                Spacer()
            }
            
            VStack {
                TextField(" 제목", text: $title)
                    .padding(.bottom, 7)
                
                Rectangle()
                    .frame(width: .infinity, height: 1)
                    .foregroundColor(Color.gray_button_line)
                    .padding(.bottom, 15)
                
                ZStack(alignment: .topLeading) {
                TextEditor(text: $description)
                Text(description == "" ? "내용을 입력하세요" : "")
                        .foregroundColor(Color.gray_text)
                        .font(SpoqaHanSansNeo.regular(size: 13))
                        .padding(.top, 10)
                        .padding(.leading, 5)
                        
                }
            }
            .padding(.top, 29)
            
            Spacer()
            
            LargeButton(title: "등록하기", backgroundColor: Color.main_club, foregroundColor: Color.white) {
                let date = Date()
                let calendar = Calendar.current
                let hour = calendar.component(.hour, from: date)
                let minutes = calendar.component(.minute, from: date)
                today = "05/28 \(hour):\(minutes)"
                
                isShowPostedViewActived = true
            }
            .padding(.bottom)
            .background(
                NavigationLink(isActive: $isShowPostedViewActived, destination: {
                    ShowPostedView(title: $title, description: $description, date: $today)
                }, label: {
                    EmptyView()
                })
            )
            
        }
        .padding(.top, 38)
        .padding(.horizontal, 35)
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
        }
    }
}

struct PostingView_Previews: PreviewProvider {
    static var previews: some View {
        PostingView()
    }
}
