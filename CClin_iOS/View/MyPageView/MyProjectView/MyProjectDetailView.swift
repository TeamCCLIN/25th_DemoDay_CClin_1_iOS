//
//  MyProjectDetailView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/25.
//

import SwiftUI

struct MyProjectDetailView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var isParticipatedClubViewActive: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            ScrollView() {
                VStack {
                    ZStack {
                        Image("background_project")
                            .resizable()
                            .frame(width: .infinity, height: 354)
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Text("D-30")
                                    .foregroundColor(Color.white)
                                    .font(SpoqaHanSansNeo.bold(size: 20))
                                    .padding(.vertical, 6)
                                    .padding(.horizontal, 16)
                                    .background(
                                        RoundedRectangle(cornerRadius: 5)
                                            .foregroundColor(Color(hex: "E0E0E0"))
                                            .opacity(0.55))
                                Spacer()
                            }
                            
                            Text("# 경쟁   # 아이디어 공모   # 브랜드 홍보   # 기획")
                                .foregroundColor(Color.white)
                                .font(SpoqaHanSansNeo.bold(size: 13))
                                .padding(.bottom, 3)
                            
                            Text("IoT 서비스의 페르소나 설계 및 \n기획전 아이디어 공모")
                                .font(SpoqaHanSansNeo.bold(size: 17))
                                .foregroundColor(Color.white)
                                .padding(.bottom, 10)
                            
                            Text("(주)고퀄")
                                .foregroundColor(Color(hex: "CACACA"))
                                .font(SpoqaHanSansNeo.medium(size: 13))
                        }
                        .padding(.top, 30)
                        .padding(.horizontal, 33)
                    }
                    
                    VStack(spacing: 23) {
                        HStack(alignment: .top, spacing: 45) {
                            Text("신청조건")
                                .font(SpoqaHanSansNeo.bold(size: 13))
                                .foregroundColor(Color.black)
                            
                            VStack(alignment: .leading) {
                                Text("국내 대학교 재/휴학생 모두")
                                
                                Text("(단, 대학원생 제외)")
                            }
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.medium(size: 13))
                            
                            Spacer()
                        }
                        
                        Rectangle()
                            .frame(height:1)
                            .foregroundColor(Color.gray_button_line)
                        
                        HStack(alignment: .top, spacing: 21) {
                            Text("프로젝트 기간")
                                .font(SpoqaHanSansNeo.bold(size: 13))
                                .foregroundColor(Color.black)
                            
                            VStack(alignment: .leading, spacing: 17) {
                                VStack(alignment: .leading, spacing:3) {
                                    Text("신청")
                                        .font(SpoqaHanSansNeo.medium(size: 13))
                                        .foregroundColor(Color.black)
                                    Text("2022.05.10 - 2022.06.15")
                                        .foregroundColor(Color(hex: "9E9E9E"))
                                        .font(SpoqaHanSansNeo.medium(size: 11))
                                }
                                
                                VStack(alignment: .leading, spacing:3) {
                                    Text("선발")
                                        .font(SpoqaHanSansNeo.medium(size: 13))
                                        .foregroundColor(Color.black)
                                    Text("2022.06.16 - 2022.06.20")
                                        .foregroundColor(Color(hex: "9E9E9E"))
                                        .font(SpoqaHanSansNeo.medium(size: 11))
                                }
                                
                                VStack(alignment: .leading, spacing:3) {
                                    Text("OT")
                                        .font(SpoqaHanSansNeo.medium(size: 13))
                                        .foregroundColor(Color.black)
                                    Text("2022.06.22")
                                        .foregroundColor(Color(hex: "9E9E9E"))
                                        .font(SpoqaHanSansNeo.medium(size: 11))
                                }
                                
                                VStack(alignment: .leading, spacing:3) {
                                    Text("진행기간")
                                        .font(SpoqaHanSansNeo.medium(size: 13))
                                        .foregroundColor(Color.black)
                                    Text("2022.06.22 - 2022.07.15")
                                        .foregroundColor(Color(hex: "9E9E9E"))
                                        .font(SpoqaHanSansNeo.medium(size: 11))
                                }
                                
                                VStack(alignment: .leading, spacing:3) {
                                    Text("최종 발표 및 피드백")
                                        .font(SpoqaHanSansNeo.medium(size: 13))
                                        .foregroundColor(Color.black)
                                    Text("2022.057.25")
                                        .foregroundColor(Color(hex: "9E9E9E"))
                                        .font(SpoqaHanSansNeo.medium(size: 11))
                                }
                            }
                            
                            Spacer()
                        }
                        
                        Rectangle()
                            .frame(height:1)
                            .foregroundColor(Color.gray_button_line)
                        
                        HStack(alignment: .top, spacing: 21) {
                            Text("프로젝트 설명")
                                .font(SpoqaHanSansNeo.bold(size: 13))
                                .foregroundColor(Color.black)
                            
                            VStack(alignment: .leading, spacing: 11) {
                                Text("STEP 1_헤이홈 페르소나 설계")
                                    .foregroundColor(Color.black)
                                    .font(SpoqaHanSansNeo.bold(size: 13))
                                
                                Text("• 헤이홈의 페르소나는 어떤 프로필을\n보유하고 있는 사람일지 팀원들과 상의\n하여 하나의 캐릭터로 다듬어 보세요.")
                                    .foregroundColor(Color.black)
                                    .font(SpoqaHanSansNeo.medium(size: 13))
                                
                                Text("• 해당 페르소나는 어떤 일상을 살아가고\n 있는 사람이고 그 과정에서 느낄 수\n있는 불편함은 무엇일지 상상해보세요.")
                                    .foregroundColor(Color.black)
                                    .font(SpoqaHanSansNeo.medium(size: 13))
                                    .padding(.bottom, 17)
                                
                                Text("STEP 2_헤이홈 IoT 제품 기획전")
                                    .foregroundColor(Color.black)
                                    .font(SpoqaHanSansNeo.bold(size: 13))
                                
                                Text("• 페르소나가 겪을 불편함의 포인트를\n발굴하고 이에 대한 ‘솔루션이 될 수\n있는 기획전’을 제안해주세요.")
                                    .foregroundColor(Color.black)
                                    .font(SpoqaHanSansNeo.medium(size: 13))
                                
                                Text("• 단, 기획전의 구성은 헤이홈의 IoT\n제품과 더불어 ‘함께 제안했을 때 \n묶음 구매 전환을 유도하는 데 \n부가적인 효과’를 줄 수 있는 타 업체\n 제품 및 서비스를 결합해주세요.")
                                    .foregroundColor(Color.black)
                                    .font(SpoqaHanSansNeo.medium(size: 13))
                                    .padding(.bottom, 10)
                                
                                Text("위의 과정을 통해 정리한 아이디어를 실제\n 기획전 페이지처럼 구성해보세요.")
                                    .foregroundColor(Color.black)
                                    .font(SpoqaHanSansNeo.bold(size: 13))
                                
                                
                                
                            }
                            
                            Spacer()
                        }
                        
                        Rectangle()
                            .frame(height:1)
                            .foregroundColor(Color.gray_button_line)
                        
                        HStack(alignment: .top, spacing: 48) {
                            Text("첨부 파일")
                                .font(SpoqaHanSansNeo.bold(size: 13))
                                .foregroundColor(Color.black)
                            
                            VStack(alignment: .leading, spacing: 24){
                                Text("IoT 서비스 헤이홈 게시용 공고.pdf")
                                    .underline()
                                Text("프로젝트 제출 양식.ppt")
                                    .underline()
                            }
                            .foregroundColor(Color.main_club)
                            .font(SpoqaHanSansNeo.medium(size: 13))
                            
                            Spacer()
                        }
                        
                        Rectangle()
                            .frame(height:1)
                            .foregroundColor(Color.gray_button_line)
                        
                        HStack(alignment: .top, spacing: 48) {
                            Text("기타 사항")
                                .font(SpoqaHanSansNeo.bold(size: 13))
                                .foregroundColor(Color.black)
                            
                            Text("없음")
                                .font(SpoqaHanSansNeo.medium(size: 13))
                                .foregroundColor(Color.black)
                            
                            Spacer()
                        }
                        
                        Spacer()
                            .frame(height: 160)
                    }
                    .padding(.horizontal, 30)
                }
            }
            
            LargeButton(title: "참여한 학생 단체 확인하기", backgroundColor: Color.main_club, foregroundColor: Color.white) {
                isParticipatedClubViewActive = true
            }
            .background(
                NavigationLink(isActive: $isParticipatedClubViewActive, destination: {
                    ParticipatedClubView()
                }, label: {
                    EmptyView()
                })
            )
            .padding(.horizontal, 31)
            .padding(.bottom, 100)
        }
        .ignoresSafeArea()
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("나의 프로젝트")
                    .foregroundColor(Color.white)
                    .font(SpoqaHanSansNeo.bold(size: 20))
            }
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    self.mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(Color.white)
                        .font(SpoqaHanSansNeo.regular(size: 20))
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                HStack {
                    Image("ic_modify")
                        .padding(.trailing, 14)
                    Image("ic_delete")
                }
                .padding(.trailing, 20)
                
            }
        }
    }
}

struct MyProjectDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectDetailView()
    }
}
