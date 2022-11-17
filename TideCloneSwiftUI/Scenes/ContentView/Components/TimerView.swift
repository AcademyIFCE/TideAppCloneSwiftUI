//
//  TimerView.swift
//  TideCloneSwiftUI
//
//  Created by Gabriela Bezerra on 17/11/22.
//

import SwiftUI

struct TimerView: View {
    var body: some View {
        VStack {
            Circle()
                .strokeBorder(style: .init(lineWidth: 3))
                .frame(height: 270)

            Spacer()

            HStack {
                Image(systemName: "laptopcomputer")
                Text("Work")
            }

            Spacer()

            Button(
                action: {
                    print("start")
                },
                label: {
                    HStack {
                        Image(systemName: "play.fill")
                        Text("Start")
                    }
                    .padding(.vertical, 14)
                    .padding(.horizontal, 20)
                    .font(Font.system(size: 14))
                    .background(Color.white)
                    .foregroundColor(.black)
                    .cornerRadius(42/2)
                }
            )
        }
        .padding(70)
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
