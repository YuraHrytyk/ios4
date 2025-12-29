import SwiftUI

struct ContentView: View {
    @State private var statusMessage: String = ""
    
    var body: some View {
        ZStack {
                LinearGradient(
                gradient: Gradient(colors: [Color.blue.opacity(0.85), Color.purple.opacity(0.9)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 30) {
                    VStack {
                        Image(systemName: "person.crop.circle.fill.badge.checkmark")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 130, height: 130)
                            .foregroundColor(.white)
                            .background(Circle().fill(Color.white.opacity(0.2)))
                            .shadow(color: .black.opacity(0.2), radius: 15, x: 0, y: 10)
                    }
                    .padding(.top, 40)

                    VStack(spacing: 10) {
                        Text("Юрій")
                            .font(.system(size: 40, weight: .black, design: .rounded))
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                        
                        Text("Software Engineering Student @ НЛТУ")
                            .font(.headline)
                            .foregroundColor(.white.opacity(0.9))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }
                    HStack(spacing: 15) {
                        InfoCard(icon: "calendar", text: "20 років")
                        InfoCard(icon: "flag.fill", text: "Україна")
                        InfoCard(icon: "laptopcomputer", text: "3 курс")
                    }
                    .padding(.horizontal)

                    VStack(alignment: .leading, spacing: 12) {
                        Text("Про мене")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.primary)
                        
                        Text("Люблю гру на гітарі, шахмати, та настольні ігри. Захоплююсь авто та електронікою. Хочу розвиватися та знайти своє призначення")
                            .font(.body)
                            .foregroundColor(.primary.opacity(0.85))
                            .lineSpacing(4)
                    }
                    .padding(20)
                    .background(Color.white.opacity(0.75))
                    .cornerRadius(20)
                    .padding(.horizontal)

                    VStack(alignment: .leading, spacing: 10) {
                        Text("Твій статус:")
                            .font(.caption)
                            .bold()
                            .foregroundColor(.white)
                        
                        HStack {
                            Image(systemName: "pencil.and.outline")
                                .foregroundColor(.white)
                            
                            TextField("Як твої справи сьогодні?", text: $statusMessage)
                                .textFieldStyle(PlainTextFieldStyle())
                                .foregroundColor(.white)

                        }
                        .padding(15)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.white, lineWidth: 2)
                                .background(Color.white.opacity(0.1))
                        )
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 30)
                }
            }
        }
    }
}

struct InfoCard: View {
    var icon: String
    var text: String
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(.white)
            
            Text(text)
                .font(.caption)
                .bold()
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 90)
        .background(Color.white.opacity(0.2))
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.white.opacity(0.3), lineWidth: 1)
        )
    }
}

#Preview {
    ContentView()
}
