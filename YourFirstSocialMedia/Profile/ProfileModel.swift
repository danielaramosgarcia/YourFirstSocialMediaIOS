import Foundation

struct ProfileModel:Identifiable, Equatable{
    var id = UUID()
    var profilePicture : String
    var description : String
    var followers : String
    var following : String
    var city : String
    var career : String
    var school : String
    var job : String

}
extension ProfileModel {
    
    public static var defaultProfile = ProfileModel(profilePicture: "profileClaudia", description:"Hola soy Claudia, estudiante de ingeniería en tecnologías computacionales en el Tec de Monterrey. Apasionada por aprender y emocionada por ser parte del mundo tecnológico.", followers: "1,225", following: "934", city: "Monterrey, N.L.", career: "Ing. en Tecnologías Computacionales", school: "Tecnológico de Monterrey", job: "Apple Inc.")
}
