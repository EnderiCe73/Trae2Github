import SwiftUI

struct ContentView: View {
    @State private var count = 0

    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "sparkles")
                .font(.system(size: 64))
                .foregroundStyle(.orange)

            Text("你好，iOS")
                .font(.largeTitle.bold())

            Text("这是由 traeCN + GitHub Actions 构建的自用测试版")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)

            Button {
                count += 1
            } label: {
                Label("点我：\(count) 次", systemImage: "hand.tap")
                    .padding()
                    .background(.blue, in: .capsule)
                    .foregroundStyle(.white)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
