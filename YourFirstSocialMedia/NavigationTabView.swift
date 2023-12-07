import SwiftUI

struct NavigationTabView: View {
    var body: some View{
        
        NavigationView {
            
            TabView() {
                VStack {
                    HomeView()
                }
                .tabItem{
                    Label("Inicio", systemImage: "house")
                        .font(.title)
                }
                
                ProfileView(profile: ProfileModel.defaultProfile)
                    .tabItem{
                        Label("Perfil", systemImage: "person")
                    }
            }
        }
    }
}

struct NavigationTabView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTabView()
            .environmentObject(HomeViewModel())
    }
}
