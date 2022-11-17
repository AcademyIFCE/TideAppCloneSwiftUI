//
//  ContentView.swift
//  TideCloneSwiftUI
//
//  Created by Gabriela Bezerra on 17/11/22.
//

import SwiftUI

struct ContentView: View {

    let grayForegroundColor = Color.white.opacity(0.35)

    @State var showingFocusMode: Bool = false

    var body: some View {
        ZStack {
            Color(white: 0, opacity: 0.7) .ignoresSafeArea()

            VStack {
                TimerView()

                // MARK: - TODO: Usar a BottomTimerView passando pra ela por parametro a closure que seta showingFocusMode do button abaixo
                HStack(spacing: 30) {
                    Button(
                        action: {
                            showingFocusMode = true
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
                }
            }
            .foregroundColor(grayForegroundColor)
        }
        .sheet(isPresented: $showingFocusMode, onDismiss: didDismiss) {
            FocusModeView()
                .presentationDetents([.fraction(0.35)])
        }

    }

    func didDismiss() {
        print("Fechei a tela do sheet")
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
