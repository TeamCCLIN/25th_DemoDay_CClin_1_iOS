//
//  PartnerListView.swift
//  CClin_iOS
//
//  Created by 홍희수 on 2022/05/21.
//

import SwiftUI
//import SDWebImageSwiftUI

struct PartnerListView: View {
    
    @State var searchInput: String = ""
    @State var showLatestOrder: Bool = true
    @State var showPopularityOrder: Bool = false
    @State var showDeadlineOrder: Bool = false
    @State var isMyPageViewActive: Bool = false
    @State var tabIndex = 0
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    SearchBar(placeholder: "", text: $searchInput)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                }
                
                VStack{
                    CustomTopTabBar(tabIndex: $tabIndex)
                    if tabIndex == 0 {
                        PartnerCompanyView()
                    }
                    else {
                        PartnerStudentView()
                    }
                    Spacer()
                }
                //.frame(width: UIScreen.main.bounds.width - 24, alignment: .center)
                .padding(.horizontal, 30)
                .listStyle(.plain)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("끌린파트너")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.bold(size: 20))
                            .padding(.leading, 15)
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            isMyPageViewActive = true
                        } label: {
                            Image(systemName: "person.crop.circle")
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
    }
}


struct TabBarButton: View {
    let text: String
    @Binding var isSelected: Bool
    var body: some View {
        Text(text)
        //.fontWeight(isSelected ? .heavy : .regular)
            .font(SpoqaHanSansNeo.bold(size: 15))
        //.padding(.bottom, 10)
            .border(width: isSelected ? 2 : 1, edges: [.bottom], color: .black)
    }
}

struct CustomTopTabBar: View {
    @Binding var tabIndex: Int
    var body: some View {
        HStack(spacing: 20) {
            TabBarButton(text: "기업", isSelected: .constant(tabIndex == 0))
                .onTapGesture { onButtonTapped(index: 0) }
            TabBarButton(text: "학생 단체", isSelected: .constant(tabIndex == 1))
                .onTapGesture { onButtonTapped(index: 1) }
            Spacer()
        }
        .border(width: 1, edges: [.bottom], color: .black)
    }
    
    private func onButtonTapped(index: Int) {
        withAnimation { tabIndex = index }
    }
}

struct EdgeBorder: Shape {
    
    var width: CGFloat
    var edges: [Edge]
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        for edge in edges {
            var x: CGFloat {
                switch edge {
                case .top, .bottom, .leading: return rect.minX
                case .trailing: return rect.maxX - width
                }
            }
            
            var y: CGFloat {
                switch edge {
                case .top, .leading, .trailing: return rect.minY
                case .bottom: return rect.maxY - width
                }
            }
            
            var w: CGFloat {
                switch edge {
                case .top, .bottom: return rect.width
                case .leading, .trailing: return self.width
                }
            }
            
            var h: CGFloat {
                switch edge {
                case .top, .bottom: return self.width
                case .leading, .trailing: return rect.height
                }
            }
            path.addPath(Path(CGRect(x: x, y: y, width: w, height: h)))
        }
        return path
    }
}


struct PartnerListView_Previews: PreviewProvider {
    static var previews: some View {
        PartnerListView()
    }
}

extension View {
    func border(width: CGFloat, edges: [Edge], color: SwiftUI.Color) -> some View {
        overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color))
    }
}
