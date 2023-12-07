////
////  HomeView.swift
////  FemCoding
////
////  Created by Alumno on 09/11/23.
////
//
import SwiftUI


struct HomeView: View {
    
    @EnvironmentObject var homeVM: HomeViewModel
    
    var body: some View {
            VStack {
                ZStack {

                    ScrollView(.vertical, showsIndicators: false) {
                        ForEach(homeVM.arrHome) { item in
                            PostView(home: item)
                                .foregroundColor(Color(.black))
                        }
                    }
                    
                    VStack {
                        Spacer()
                        
                        HStack {
                            Spacer()
                            
                            Circle()
                                .foregroundColor(Color.clear)
                                .frame(width: 60, height: 60)
                            
                            Button(action: {

                            }) {
                                Image(systemName: "plus")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .padding()
                                    .background(Color("AccentColor"))
                                    .foregroundColor(.white)
                                    .cornerRadius(50)
                            }
                            .padding()
                            .frame(width: 60, height: 60)
                            .contentShape(Circle())
                        }
                        .padding(.horizontal, 15)
                        .padding(.bottom, 25)
                    }
                    
                }
                
        }
    }
   
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject( HomeViewModel())
    }
}
