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

                // MARK: - TODO: Fazer transição para o sheet de Sound Scenes
                BottomTimerView(
                    bindingShowingFocusMode: $showingFocusMode
                )
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
