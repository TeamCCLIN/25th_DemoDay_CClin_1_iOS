//
//  KeepView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/24.
//

import SwiftUI

struct KeepView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var selectKeepType: Int = 0
    
    var body: some View {
        VStack {
            Picker("", selection: $selectKeepType ) {
                Text("끌린 파트너").tag(0)
                Text("제휴/협찬").tag(1)
            }
            .padding(.horizontal, 30)
            .pickerStyle(SegmentedPickerStyle())
            
            VStack {
                switch(selectKeepType) {
                case 0: KeepPartnerView()
                case 1: KeepSponsoredView()
                default:
                    KeepPartnerView()
                }
            
            }
            .padding(.top, 24)
        }
        .padding(.top, 24)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("찜한 목록")
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

struct KeepView_Previews: PreviewProvider {
    static var previews: some View {
        KeepView()
    }
}
