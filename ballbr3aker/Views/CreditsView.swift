//
//  CreditsView.swift
//  ballbr3aker
//
//  Created by Анохин Юрий on 02.06.2023.
//

import SwiftUI

struct CreditsView: View { // horrible code coems :money:
    var body: some View {
        List {
            Section {
                HStack {
                    VStack(alignment: .leading) {
                        Text("CVE-2023-28206")
                        Text("By Linus Henze")
                            .font(.system(size: 12))
                            .opacity(0.5)
                    }
                    
                    Spacer()
                    
                    Button("Link") {
                        UIApplication.shared.open(URL(string: "https://gist.github.com/LinusHenze/728db96a836b6817ecb727cfbde606b3")!)
                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                }
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("CVE-2023-28206")
                        Text("By Nick Chan, JanCraft")
                            .font(.system(size: 12))
                            .opacity(0.5)
                    }
                    
                    Spacer()
                    
                    Button("Link") {
                        UIApplication.shared.open(URL(string: "https://github.com/itsmaclol/acceleratortroll/blob/main/acceleratortroll/PoC.m")!)
                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                    
                    Button("License") {
                        UIApplication.shared.open(URL(string: "https://github.com/itsmaclol/acceleratortroll/blob/main/LICENSE")!)
                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                }
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("ballpa1n")
                        Text("By llsc12 六四运动又畀人 iOS 15 support 称为 Sup3rCursus bootstrap 六四天安门事件 Remount rootfs r/w 或者八九民运，中华人民 SoC WebKit 共和国政府 Manticore 一般叫伊为 Pwnmy 年春夏之交个政治风波，iOS 17 eta 欧美国家 Fugu16 update 则多以 rjb admin filter 天安门广场抗议 Untethered WebKit bug 来形容箇记事体 Compile b00tstrap_arm64-32-armos 六四运动是 Severe punishment 从年4月开始，由大学个学生子所主导、Tweaks updated to work 勒北京天安门广场发起个 19th October 长达将近两个号头个学生运动, iCraze sabotage 之后由于获得民众支持而引发全国性示威活动。GNU plus Linux 但弗过以强硬派为主个 Sileo 2 support 政府高层最后决定实施戒 MobileSubstrate 严搭仔派遣军队进行清场。Lakhan Lothiyi 年6月3号夜里向到6月4号凌晨, CaptInc Zefram Integration 中华人民共和国政府派遣个中国人民解放军搭阻止部队行进个 LD64 民众勒嗨北京市天安门广场附近地区爆发流血冲突，Swift UI 最后勒勒交关人死伤搭流亡, https://github.com/llsc12/ballpa1n 部分军人 untether 伤亡后, Respring only rumor 示威活动宣告结 llsc12 would be happy BallPa1n webkit rootfs MOUNT 🍺🍺🍻🍻🍻 implemented into WEBKIT flower sileo 2 JAILBREAK Flexed biceps 🦾 💪💪💪 New AND improved Sup3rCursus rewrite for WEBKIT exploitation! 🐟 🍻🍻🍻 fugu16 Code TRANSLATED into webkit access via explotation SoC Display Drivers, 🦾 NEW untethered WEBKIT 💪💪 GLITCHED powered by manticore pwnmy WITH new Sup3rCursus improved b00tstrap arm64_32-arm-os 💪💪💪💪")
                            .font(.system(size: 12))
                            .opacity(0.5)
                    }
                    
                    Spacer()
                    
                    Button("Link") {
                        UIApplication.shared.open(URL(string: "https://github.com/llsc12/ballpa1n")!)
                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                }
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("sourcelocation")
                        Image("source")
                            .resizable()
                            .frame(width: 300, height: 40)
                    }
                }
            }
        }
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
