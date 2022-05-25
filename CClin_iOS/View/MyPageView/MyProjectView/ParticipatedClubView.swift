//
//  ParticipatedClubView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/25.
//

import SwiftUI

struct ParticipatedClubView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var applicateClubList: [ApplicateClub] = [
        ApplicateClub(name: "한국대학생IT경영학회",category: "IT·기술", date: "05/02 12:10", isSelected: false),
        ApplicateClub(name: "원큐",category: "IT·기술", date: "05/10 01:12", isSelected: false),
        ApplicateClub(name: "Hey",category: "경영·마케팅·컨설팅", date: "05/19  21:29", isSelected: false),
        ApplicateClub(name: "원더풀",category: "IT·기술", date: "05/19  22:34", isSelected: false)
    ]
    
    @State var selectedClubList: [String] = []
    @State var isShowPopUp: Bool = false
    
    var body: some View {
        ZStack() {
            ZStack(alignment: .bottom) {
                ScrollView {
                    VStack {
                        ForEach(0..<applicateClubList.count, id: \.self) { i in
                            ParticipatedRowView(id: .constant(0), name: $applicateClubList[i].name, category: $applicateClubList[i].category, date: $applicateClubList[i].date, isSelected: $applicateClubList[i].isSelected)
                        }
                    }
                }
                .padding(.top, 120)
                
                LargeButton(title: "학생 단체 선정", backgroundColor: Color.main_club, foregroundColor: Color.white) {
                    selectedClubList = applicateClubList
                        .filter({$0.isSelected })
                        .map({$0.name})
                    isShowPopUp = true
                    print(applicateClubList)
                }
                .padding(.bottom, 120)
                .padding(.horizontal, 31)
                
                if isShowPopUp {
                    Rectangle()
                        .foregroundColor(Color(hex: "3E3E3E"))
                        .opacity(0.7)
                        .frame(width: .infinity, height: .infinity)
                }
            }
            
            ZStack(alignment: .center) {
                PopUpView(selectedClubList: $selectedClubList, isShow: $isShowPopUp)
            }
            
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("프로젝트 신청 확인")
                        .foregroundColor(Color.black)
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
        .ignoresSafeArea()
    }
}

struct ParticipatedClubView_Previews: PreviewProvider {
    static var previews: some View {
        ParticipatedClubView()
    }
}
