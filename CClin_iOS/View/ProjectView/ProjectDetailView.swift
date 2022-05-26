//
//  ProjectDetailView.swift
//  CClin_iOS
//
//  Created by 홍희수 on 2022/05/26.
//

import SwiftUI

struct ProjectDetailView: View {
    
    @State var isMyPageViewActive: Bool = false
    var body: some View {
        ScrollView() {
            VStack {
                
                HStack {
                    Text("신청조건")
                        .font(SpoqaHanSansNeo.bold(size: 13))
                        .foregroundColor(Color(hex: "474646"))
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("국내 대학교 재/휴학생 모두")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.bold(size: 13))
                        
                        //Spacer()
                        
                        Text("(단, 대학원생 제외)")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.bold(size: 13))
                    }
                }
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                
                Rectangle()
                    .frame(height:1)
                    .foregroundColor(Color.gray_button_line)
                    .padding(.horizontal, 40)
            }
            
            VStack {
                
                HStack {
                    Text("프로젝트 기간")
                        .font(SpoqaHanSansNeo.bold(size: 13))
                        .foregroundColor(Color(hex: "474646"))
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("신청")
                            .font(SpoqaHanSansNeo.bold(size: 13))
                            .foregroundColor(Color(hex: "474646"))
                        Text("2022.05.10 - 2022.06.15")
                            .foregroundColor(Color.gray)
                            .font(SpoqaHanSansNeo.bold(size: 10))
                        
                        Spacer()
                        
                        
                        Text("선발")
                            .font(SpoqaHanSansNeo.bold(size: 13))
                            .foregroundColor(Color(hex: "474646"))
                        Text("2022.06.16 - 2022.06.20")
                            .foregroundColor(Color.gray)
                            .font(SpoqaHanSansNeo.bold(size: 10))
                        
                        Spacer()
                        
                        
                        Text("OT")
                            .font(SpoqaHanSansNeo.bold(size: 13))
                            .foregroundColor(Color(hex: "474646"))
                        Text("2022.06.22")
                            .foregroundColor(Color.gray)
                            .font(SpoqaHanSansNeo.bold(size: 10))
                    }
                    
                }
                .padding(.horizontal, 40)
            
            }
            
            
            VStack {
                HStack {
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("진행기간")
                            .font(SpoqaHanSansNeo.bold(size: 13))
                            .foregroundColor(Color(hex: "474646"))
                        Text("2022.06.22 - 2022.07.15")
                            .foregroundColor(Color.gray)
                            .font(SpoqaHanSansNeo.bold(size: 10))
                        
                        
                        Text("2022.06.22 - 2022.07.15")
                            .foregroundColor(Color.white)
                            .font(SpoqaHanSansNeo.bold(size: 10))
                        Spacer()
                        
                        
                        Text("최종 발표 및 피드백")
                            .font(SpoqaHanSansNeo.bold(size: 13))
                            .foregroundColor(Color(hex: "474646"))
                        Text("2022.07.25")
                            .foregroundColor(Color.gray)
                            .font(SpoqaHanSansNeo.bold(size: 10))
                    }
                    
                }
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                
                Rectangle()
                    .frame(height:1)
                    .foregroundColor(Color.gray_button_line)
                    .padding(.horizontal, 40)
            }
            
            VStack {
                
                HStack {
                    Text("프로젝트 설명")
                        .font(SpoqaHanSansNeo.bold(size: 13))
                        .foregroundColor(Color(hex: "474646"))
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("STEP 1_헤이홈 페르소나 설계")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.bold(size: 13))
                        
                        Text("- 헤이홈의 페르소나는 어떤 프로필을 보유하고 있는 사람일지 팀원들과 상의하여 하나의 캐릭터로 다듬어 보세요.")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.medium(size: 13))
                        Text("- 해당 페르소나는 어떤 일상을 살아가고 있는 사람이고 그 과정에서 느낄 수 있는 불편함은 무엇일지 상상해보세요.")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.medium(size: 13))
                        
                        
                        Text("2022.06.22 - 2022.07.15")
                            .foregroundColor(Color.white)
                            .font(SpoqaHanSansNeo.bold(size: 10))
                        Spacer()
                        
                        Text("STEP 2_헤이홈 IoT 제품 기획전")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.bold(size: 13))
                        Text("- 페르소나가 겪을 불편함의 포인트를 발굴하고 이에 대한 ‘솔루션이 될 수 있는 기획전’을 제안해주세요.")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.medium(size: 13))
                        Text("- 단, 기획전의 구성은 헤이홈의 IoT 제품과 더불어 ‘함께 제안했을 때 묶음 구매 전환을 유도하는 데 부가적인 효과’를 줄 수 있는 타 업체의 제품 및 서비스를 결합해주세요.")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.medium(size: 13))
                    }
                }
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                
                Rectangle()
                    .frame(height:1)
                    .foregroundColor(Color.gray_button_line)
                    .padding(.horizontal, 40)
            }
            
            VStack {
                
                HStack {
                    Text("첨부파일")
                        .font(SpoqaHanSansNeo.bold(size: 13))
                        .foregroundColor(Color(hex: "474646"))
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("IoT 서비스 헤이홈 게시용 공고.pdf")
                            .foregroundColor(Color(hex: "F27953"))
                            .font(SpoqaHanSansNeo.bold(size: 13))
                            .underline()
                        
                        Spacer()
                        
                        Text("프로젝트 제출 양식.ppt")
                            .foregroundColor(Color(hex: "F27953"))
                            .font(SpoqaHanSansNeo.bold(size: 13))
                            .underline()
                    }
                }
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                
                Rectangle()
                    .frame(height:1)
                    .foregroundColor(Color.gray_button_line)
                    .padding(.horizontal, 40)
            }
            
            VStack {
                
                HStack {
                    Text("기타 사항")
                        .font(SpoqaHanSansNeo.bold(size: 13))
                        .foregroundColor(Color(hex: "474646"))
                    
                    Spacer()
                    
                    VStack {
                        Text("없음")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.bold(size: 13))
                    }
                }
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                
                Rectangle()
                    .frame(height:1)
                    .foregroundColor(Color.gray_button_line)
                    .padding(.horizontal, 40)
            }
            
            Spacer()
            Spacer()
            
            VStack {
                Button(action: {}) {
                    Text("프로젝트 신청하기")
                        .foregroundColor(Color.white)
                        .font(SpoqaHanSansNeo.bold(size: 13))
                }
                .tint(Color.main_club)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.automatic)
                .controlSize(.large)
            }
        }
        
        
    }
}

struct ProjectDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDetailView()
    }
}
