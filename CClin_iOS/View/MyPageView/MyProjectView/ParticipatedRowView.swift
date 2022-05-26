//
//  ParticipatedRowView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/25.
//

import SwiftUI

struct ApplicateClub:Hashable {
    var name: String = ""
    var category: String = ""
    var date: String = ""
    var isSelected: Bool = false
}

struct ParticipatedRowView: View {
    
    @Binding var id: Int
    @Binding var name: String
    @Binding var category: String
    @Binding var date: String
    @Binding var isSelected: Bool
    
    @State var isPostedApplyProjectViewActive: Bool = false
    
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack {
                    Text(String(id))
                        .foregroundColor(Color(hex: "9E9E9E"))
                        .font(SpoqaHanSansNeo.medium(size: 11))
                        .padding(.trailing, 27)
                    
                    Spacer()
                }
                
                Button {
                    isPostedApplyProjectViewActive = true
                } label: {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("# \(category)")
                            .foregroundColor(Color.main_club)
                            .font(SpoqaHanSansNeo.bold(size: 11))
                        
                        Text(name)
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.bold(size: 13))
                    }
                }
                .background(
                    NavigationLink(isActive: $isPostedApplyProjectViewActive, destination: {
                        PostedApplyProjectView()
                    }, label: {
                        EmptyView()
                    })
                )
                
                Spacer()
                
                VStack(alignment: .trailing, spacing: 10) {
                    Text(date)
                        .foregroundColor(Color(hex: "D8D8D8"))
                        .font(SpoqaHanSansNeo.medium(size: 11))
                    
                    Toggle("", isOn: $isSelected)
                        .labelsHidden()
                        .toggleStyle(SwitchToggleStyle(tint: Color.main_club))
                        .frame(width: 37, height: 17)
                }
            }
            
            Rectangle()
                .foregroundColor(Color.gray_button_line)
                .frame(height:1)
            //                .padding(.vertical, 15)
        }
        .frame(width: .infinity, height: 60)
        .padding(.horizontal, 31)
        //        VStack {
        //            HStack {
        //                Text(String(id))
        //                    .foregroundColor(Color(hex: "9E9E9E"))
        //                    .font(SpoqaHanSansNeo.medium(size: 11))
        //                    .padding(.trailing, 27)
        //
        //                Text("# \(category)")
        //                    .foregroundColor(Color.main_club)
        //                    .font(SpoqaHanSansNeo.bold(size: 11))
        //
        //                Spacer()
        //
        //                Text(date)
        //                    .foregroundColor(Color(hex: "D8D8D8"))
        //                    .font(SpoqaHanSansNeo.medium(size: 11))
        //            }
        //
        //            HStack {
        //                Text(name)
        //                        .foregroundColor(Color.black)
        //                        .font(SpoqaHanSansNeo.bold(size: 13))
        //                        .padding(.leading, 40)
        //
        //                Spacer()
        //
        //                Toggle("", isOn: $isSelected)
        //                    .labelsHidden()
        //                    .toggleStyle(SwitchToggleStyle(tint: Color.main_club))
        //                    .frame(width: 37, height: 17)
        //
        //            }
        //
        //            Rectangle()
        //                .foregroundColor(Color.gray_button_line)
        //                .frame(height:1)
        //                .padding(.vertical, 15)
        //        }
        
    }
}

struct ParticipatedRowView_Previews: PreviewProvider {
    static var previews: some View {
        ParticipatedRowView(id: .constant(0), name: .constant("dd"), category: .constant("ddd"), date: .constant("ddsd-dd-dd"), isSelected: .constant(true))
    }
}
