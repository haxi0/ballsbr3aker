//
//  ContentView.swift
//  ballbr3aker
//
//  Created by Анохин Юрий on 01.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var logHidden = true
    @State private var log: [String] = []
    @State private var creditsShown = false
    @AppStorage("firstTime") private var firstTime = true
    
    var body: some View {
        VStack {
            VStack {
                Text("ballsbr3aker")
                    .bold()
                    .font(.system(size: 50))
                
                Text("Totally real jailbreak, iOS 16.0-16.4")
                    .opacity(0.5)
            }
            
            if logHidden {
                VStack {
                    Button(action: {
                        withAnimation {
                            logHidden = false
                        }
                    }) {
                        Label("Jailbreak", systemImage: "lock.open")
                            .font(.system(size: 20))
                            .padding()
                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 15))
                    .disabled(isSupportedVersion())
                    
                    Button {
                        creditsShown.toggle()
                    } label: {
                        Label("Credits", systemImage: "info.circle")
                    }
                }
                .padding()
            } else {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Jailbreaking...")
                            .opacity(0.5)
                            .padding()
                        ProgressView()
                    }
                    
                    Color.black
                        .cornerRadius(20)
                        .overlay(
                            ScrollView {
                                VStack(alignment: .leading) {
                                    ForEach(log, id: \.self) { entry in
                                        Text(entry)
                                            .font(.custom("Menlo", size: 14))
                                            .foregroundColor(.white)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .textSelection(.enabled)
                                    }
                                }
                                .padding(10)
                            }
                        )
                }
                .onAppear {
                    log(entry: "[*] Started jailbreak progress", time: 1)
                    log(entry: "[*] Ensuring resources", time: 2)
                    log(entry: "[W] Balls.app is either corrupted or doesn't exist", time: 4)
                    log(entry: "[*] Exploiting kernel", time: 10)
                    log(entry: "[I] \(randomNumbers())", time: 19)
                    log(entry: "[E] Kernel exploit failed!", time: 20)
                }
                .onChange(of: log) { newLog in
                    if newLog.contains("[E] Kernel exploit failed!") {
                        exploitFailed()
                    }
                }
                .padding()
                .transition(.move(edge: .bottom))
            }
        }
        .sheet(isPresented: $creditsShown) {
            CreditsView()
        }
        .onAppear {
            if firstTime {
                UIApplication.shared.alert(title: "Warning ⚠️", body: "THIS IS A FAKE JAILBREAK!!! This app will show some fake logs, then run a POC by Linus Henze. I AM NOT RESPONSIBLE FOR ANY DAMAGE, YOU HAVE BEEN WARNED. coems 🤑🤑")
                firstTime.toggle()
            }
        }
    }
    
    private func log(entry: String, time: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + time) {
            log.append(entry)
        }
    }
    
    private func isSupportedVersion() -> Bool {
        if #available(iOS 16.4.1, *) {
            return true
        } else {
            return false
        }
    }
    
    private func randomNumbers() -> String {
        let errorCode = String(format: "%02X", arc4random_uniform(256))
        let errorValue = String(format: "%08X", arc4random_uniform(UInt32.max))
        return "0x\(errorCode)\(errorValue)"
    }
    
    private func exploitFailed() {
        UIApplication.shared.alert(title: "Kernel exploit failed", body: "Your device will now reboot, L", withButton: false)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            trigger_memmove_oob_copy()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
