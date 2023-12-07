//
//  HomeViewModel.swift
//  FemCoding
//
//  Created by Daniela Ramos Garcia on 09/11/23.
//


import Foundation
import SwiftUI

class HomeViewModel : ObservableObject{
    
    @Published var arrHome = [HomeModel]()
    
    init(){
        getHome()
    }
    func getHome() {
        
        var home : HomeModel
        
        home = HomeModel(titulo: "FemCoding Challenge 2023 ", descripcion: "Hoy volamos a Tijuana en camino al FemCoding Challenge 2023 organizado por Enactus. Estamos super emocionadas de por fin poderles mostrar nuestra app a todos. USinSTEM! @danielaramosgarcia @valelimon", nombreImagenPost: "profileClaudia", NombrePersona: "@clauarcienegam", nombreImagen: "profileClau", questions: 8)
        arrHome.append(home)
        
        home = HomeModel(titulo: "Fin del internship en Uber, SF 🌉", descripcion: "Cierro mi etapa como ingeniera de software en Uber. Gracias por las experiencias desafiantes y el aprendizaje en este emocionante viaje. ¡Listos para el próximo desafío! 🚗✨ ", nombreImagenPost: "PostDani", NombrePersona: "@danielaramosgarcia", nombreImagen: "yo", questions: 30)
        arrHome.append(home)
        
        home = HomeModel(titulo: "Evento", descripcion: "💻🚀 Únete a nuestro equipo. Buscamos ingenieras apasionadas para liderar proyectos innovadores. Tu talento es la clave para construir el futuro. ¡Aplica ahora! ", nombreImagenPost: "PostDani2", NombrePersona: "EmpresaX", nombreImagen: "fakecompany", questions: 3)
        arrHome.append(home)
        
        home = HomeModel(titulo: "Oportunidades para mujeres", descripcion: "💻🚀 Únete a nuestro equipo. Buscamos ingenieras apasionadas para liderar proyectos innovadores. Tu talento es la clave para construir el futuro. ¡Aplica ahora! ", NombrePersona: "EmpresaX", nombreImagen: "fakecompany", questions: 3)
        arrHome.append(home)
        
        home = HomeModel(titulo: "CyberHackathon", descripcion: "La semana pasada, participé en un emocionante hackathon. Desafíos superados y nuevos aprendizajes. ¡La seguridad en línea es tarea de todos! 👩‍💻🌐.", nombreImagenPost: "PostVale", NombrePersona:"@valelimon", nombreImagen: "vale", questions: 28)
        arrHome.append(home)
        
         home = HomeModel(titulo: "Speech: Mujeres en STEM ", descripcion: "Ven a este Speech acerca de la importancia de la igualdad de género en el ámbito laboral.", nombreImagenPost: "PostSpeech", NombrePersona: "@CCMDev", nombreImagen: "SpeechCCMDev", questions: 12)
                arrHome.append(home)
        
    }
    
    func getPostsForUser(username: String) -> [HomeModel] {
            return arrHome.filter { $0.NombrePersona == username }
        }
}
