import SwiftUI

struct NavigationTabView: View {
    @State private var isDetailViewPresented = false
    @State private var isSidebar = false

    var body: some View{
        
        NavigationView {
            
            TabView() {
                VStack {
                    HomeView()
                    Spacer()
                    
                }
                .tabItem{
                    Label("Inicio", systemImage: "house")
                        .font(.title)
                }
                
                ProfileView()
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
    }
}
