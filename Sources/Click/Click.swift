

import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public struct BlueButtonStyle: ButtonStyle{
    
    public init(){}
    
    public var cornerRadius: CGFloat = 16
    public var color: Color = Color.blue
    public var textColor: Color = Color.white
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title)
            .foregroundColor(textColor)
            .padding()
            .background(color)
            .cornerRadius(cornerRadius)
    }
}
