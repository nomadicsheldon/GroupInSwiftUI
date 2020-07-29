import SwiftUI
import PlaygroundSupport

struct TextView: View {
    var body: some View {
        Group {
            Text("Hello")
            Text("SwiftUI")
            Text("Awesome")
        }
    }
}

struct WelcomeView: View {
    @State private var layoutVertically = false
//    @Environment(\.horizontalSizeClass) var sizeClass  // .compact
    var body: some View {
        Group {
//            if sizeClass == .compact
            if layoutVertically {
                VStack {
                    TextView()
                }
            } else {
                HStack {
                    TextView()
                }
            }
        }
        .onTapGesture {
            self.layoutVertically.toggle()
        }
    }
}

PlaygroundPage.current.setLiveView(WelcomeView())
