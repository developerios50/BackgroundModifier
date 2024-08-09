// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

struct MyViewModifier: ViewModifier {
    let color: Color

    func body(content: Content) -> some View {
        content
            .background(color)
    }
}

extension View {

    func changeBackgroundColor(color: Color) -> some View {
        self
            .modifier(MyViewModifier(color: color))
    }
}
