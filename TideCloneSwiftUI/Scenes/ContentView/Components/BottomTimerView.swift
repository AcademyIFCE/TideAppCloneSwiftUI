//
//  BottomTimerView.swift
//  TideCloneSwiftUI
//
//  Created by Gabriela Bezerra on 17/11/22.
//

import SwiftUI

struct BottomTimerView: View {

    @Binding var bindingShowingFocusMode: Bool

    var body: some View {

        // MARK: - TODO: ScrollView com o Button Componentizado
        HStack(spacing: 30) {
            Button(
                action: {
                    bindingShowingFocusMode = true
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
                    print("Focus Tags")
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
                    print("Sound Scenes")
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
