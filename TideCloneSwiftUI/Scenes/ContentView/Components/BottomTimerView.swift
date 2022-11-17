//
//  BottomTimerView.swift
//  TideCloneSwiftUI
//
//  Created by Gabriela Bezerra on 17/11/22.
//

import SwiftUI

struct BottomTimerView: View {
    var body: some View {
        HStack(spacing: 30) {
            Button(
                action: {
                    print("Focus Mode")
                },
                label: {
                    VStack(spacing: 10) {
                        Image(systemName: "clock")
                            .font(Font.system(size: 24))
                        Text("Focus Mode")
                            .foregroundColor(.white.opacity(0.15))
                    }
                }
            )
            Button(
                action: {
                    print("Focus Mode")
                },
                label: {
                    VStack(spacing: 10) {
                        Image(systemName: "laptopcomputer")
                            .font(Font.system(size: 24))
                        Text("Focus Tags")
                            .foregroundColor(.white.opacity(0.15))
                    }
                }
            )
            Button(
                action: {
                    print("Focus Mode")
                },
                label: {
                    VStack(spacing: 10) {
                        Image(systemName: "headphones.circle")
                            .font(Font.system(size: 24))
                        Text("Sound Scenes")
                            .foregroundColor(.white.opacity(0.15))
                    }
                }
            )
        }
    }
}

struct BottomTimerView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTimerView()
    }
}
