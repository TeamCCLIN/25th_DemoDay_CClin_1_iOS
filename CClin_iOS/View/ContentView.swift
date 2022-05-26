//
//  ContentView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/12.
//

import SwiftUI

struct ContentView: View {
    
    @State var showLoginView:Bool = true
    @State var selectedTab: SelectedTab = .home
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedTab) {
                ClubHomeView()
                    .tabItem {
                        Image(selectedTab == .home ? "ic_home_accent" : "ic_home")
                        Text("홈")
                    }
                    .tag(SelectedTab.home)
                
                PartnerListView()
                    .tabItem {
                        Image(selectedTab == .partner ? "ic_partner_accent" : "ic_partner")
                        Text("끌린 파트너")
                    }
                    .tag(SelectedTab.partner)
                
                ProjectFirstView()
                    .tabItem {
                        Image(selectedTab == .project ? "ic_project_accent" : "ic_project")
                        Text("프로젝트")
                    }
                    .tag(SelectedTab.project)
                
                SponsoredHomeView()
                    .tabItem {
                        Image(selectedTab == .affiliate ? "ic_sponsor_accent" : "ic_sponsor")
                        Text("제휴협찬")
                    }
                    .tag(SelectedTab.affiliate)
                
            }
            .accentColor(Color(hex: "F27953"))
            .onAppear {
                showLoginView = true
            }
        }
        .fullScreenCover(isPresented: $showLoginView) {
            LoginView()
        }
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
