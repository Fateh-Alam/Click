

import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
struct BlueButtonStyle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title)
            .foregroundColor(Color.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(15)
    }
}
