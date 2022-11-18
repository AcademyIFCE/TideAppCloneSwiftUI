//
//  FocusModeView.swift
//  TideCloneSwiftUI
//
//  Created by Gabriela Bezerra on 17/11/22.
//

import SwiftUI

struct FocusModeView: View {

    var rowModels: [FocusModeRowModel] = [
        FocusModeRowModel(
            gradient: [Color.yellow, Color.orange],
            iconName: "timer",
            title: "Timer Mode",
            description: "Set your goal, keep focused"
        ),
        FocusModeRowModel(
            gradient: [Color.orange, Color.red],
            iconName: "clock",
            title: "Work Mode",
            description: "Based on Pomodoro Techniques"
        ),
        FocusModeRowModel(
            gradient: [Color.red, Color.pink],
            iconName: "infinity",
            title: "Infinite Mode",
            description: "Set your goal, keep focused"
        ),
        FocusModeRowModel(
            gradient: [Color.blue, Color.teal],
            iconName: "sun.max",
            title: "Lazy Mode",
            description: "Just chill"
        )
    ]

    var body: some View {
        ZStack {
            Color.black.opacity(0.9).ignoresSafeArea()

            VStack {
                Text("Focus Mode")
                    .foregroundColor(.gray)
                    .bold()
                    .padding()

                Spacer()

                ScrollView {
                    VStack(spacing: 24) {
                        ForEach(rowModels, id: \.title) { model in //#2 work mode
                            FocusModeRowView(model: model)
                        }
                    }
                    .padding(.horizontal, 20)
                }
                .foregroundColor(.white)
            }
        }
    }
}

struct FocusModeView_Previews: PreviewProvider {
    static var previews: some View {
        Color
            .gray
            .ignoresSafeArea()
            .sheet(
                isPresented: Binding(
                    get: { true },
                    set: { _ in }
                )
            ) {
                FocusModeView()
                    .presentationDetents([.fraction(0.35)])
            }
    }
}
