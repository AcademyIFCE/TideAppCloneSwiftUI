//
//  FocusModeRowView.swift
//  TideCloneSwiftUI
//
//  Created by Gabriela Bezerra on 18/11/22.
//

import SwiftUI

struct FocusModeRowView: View {

    let model: FocusModeRowModel

    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: model.iconName)
                .font(Font.system(size: 26))
                .frame(width: 50, height: 50)
                .background(
                    LinearGradient(
                        colors: model.gradient,
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .foregroundColor(.white)
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 8) {
                Text(model.title)
                    .font(Font.system(size: 22))
                Text(model.description)
                    .font(.subheadline)
                    .opacity(0.6)
            }

            Spacer()
        }
    }
}
