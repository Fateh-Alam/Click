

import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public struct BlueButtonStyle: ButtonStyle{
    
    public var cornerRadius: CGFloat = 16
    public var color: Color = Color.blue
    public var textColor: Color = Color.white
    
    public init(){}
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title)
            .foregroundColor(textColor)
            .padding()
            .background(color)
            .cornerRadius(cornerRadius)
    }
}

@available(iOS 14.0, *)
@available(macOS 10.15, *)
public struct CustomButtonStyle: ButtonStyle{

    public var cornerRadius: CGFloat
    public var color: Color
    public var textColor: Color
    public var isNeumorphic: Bool

    public init(cornerRadii: CGFloat, background: Color, foregroundColor: Color, neumorphic: Bool){
        self.cornerRadius = cornerRadii
        self.color = background
        self.textColor = foregroundColor
        self.isNeumorphic = neumorphic
        
    }
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title)
            .foregroundColor(textColor)
            .padding()
            .background(self.isNeumorphic ? Color.clear : color)
            .cornerRadius(cornerRadius)
            .padding(5)
            .background(
                self.isNeumorphic ? ZStack {
                    Color(if self.color == Color.white ? #colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1) : Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)).colorMultiply(.blue))
                    
                    RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                        .foregroundColor(.white)
                        .blur(radius: 4)
                        .offset(x: -8, y: -8)
                    
                    RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9019607843, green: 0.9294117647, blue: 0.9882352941, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .padding(2)
                        .blur(radius: 2)
                }:  ZStack {
                        Color.clear
                    
                    RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                        .foregroundColor(.clear)
                        .blur(radius: 4)
                        .offset(x: -8, y: -8)
                    
                    RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color(UIColor(Color.clear)), Color.clear]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .padding(2)
                        .blur(radius: 2)
                }
                
                
            )
        
    }
}

//@available (iOS 14.0, *)
//@available (macOS 10.0, *)
//public struct NeumorphicButton: ButtonStyle {
//    public var maxWidth: CGFloat
//    public var minWidth: CGFloat
//    public var cornerRadius: CGFloat
//
//    public init(){}
//
//
//    public func makeBody(configuration: Configuration) -> some View {
//        return
//            configuration.label
//            .frame(minWidth: minWidth, maxWidth: maxWidth)
//            .padding()
//            .background(
//                ZStack {
//                    Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1))
//
//                    RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
//                        .foregroundColor(.white)
//                        .blur(radius: 4)
//                        .offset(x: -8, y: -8)
//
//                    RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
//                        .fill(
//                            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9019607843, green: 0.9294117647, blue: 0.9882352941, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                        )
//                        .padding(2)
//                        .blur(radius: 2)
//                }
//            )
//            .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
//            .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
//            .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
//
//    }
//}
