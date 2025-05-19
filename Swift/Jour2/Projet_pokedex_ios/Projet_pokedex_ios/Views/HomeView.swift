import SwiftUI

struct HomeView: View {
    @State private var search = ""

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.blue, .yellow]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack {
                Image("Pokemon_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                    .padding(.top, 50)

                Spacer()

                Image("Pikachu")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)

                Spacer()

                TextField("Rechercher un Pokémon...", text: $search)
                    .padding()
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(10)
                    .padding(.horizontal, 30)
                    .padding(.bottom, 40)
            }
        }
    }
}

#Preview {
    HomeView()
}
