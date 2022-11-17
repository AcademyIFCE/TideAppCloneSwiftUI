//
//  FocusModeView.swift
//  TideCloneSwiftUI
//
//  Created by Gabriela Bezerra on 17/11/22.
//

import SwiftUI

struct FocusModeView: View {

    var body: some View {
        ZStack {
            Color.black.opacity(0.9).ignoresSafeArea()

            VStack {
                Text("Focus Mode")
                    .foregroundColor(.gray)
                    .bold()
                    .padding()

                Spacer()

                // MARK: - TODO: Transformar numa ScrollView e Componentizar
                VStack {
                    HStack(spacing: 20) {
                        Image(systemName: "clock")
                            .font(Font.system(size: 30))
                            .padding()
                            .background(Color.yellow)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text("Timer Mode")
                            Text("Set your goal, keep focused")
                        }
                        Spacer()
                    }
                    .padding(25)
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
            .sheet(isPresented: Binding(get: { true }, set: { _ in })) {
                FocusModeView()
                    .presentationDetents([.fraction(0.35)])
            }
    }
}
