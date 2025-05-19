/*:
 ## Parcourir des tableaux et des dictionnaires.
 
 
 Supposons que votre application contienne une liste de différents mouvements pouvant être suivis. Vous souhaitez afficher chaque élément de la liste à l'utilisateur. Utilisez une boucle for-in pour parcourir les mouvements ci-dessous et imprimer chaque mouvement.
 */
let mouvements: [String] = ["Natation", "Course", "Marche", "Saut"]
for i in mouvements {
    print(i)
}
/*:
 Créez un dictionnaire capitals de type [String: String] et ajoutez au moins 4 pays en clés et leur capitale en valeur. Utilisez une boucle for-in pour parcourir le dictionnaire et afficher chaque pays et sa capitale grâce à l'interpolation. Exemple : "Paris est la capitale de la France".
 */
var capitals: [String: String] = [:]
capitals["France"] = "Paris"
capitals["Allemagne"] = "Berlin"
capitals["Italie"] = "Rome"
capitals["Espagne"] = "Madrid"

for (pays, capitale) in capitals {
    print("\(capitale) est la capitale de \(pays)")
}



/*:

 faite une nouvelle boucle et Ajoutez une condition pour n’afficher que les pays dont la capitale commence par la lettre “B”. Utilisez une boucle for-in where pour parcourir le dictionnaire et filtrer les éléments.

 👉 Exemple de résultat attendu :
 “Bruxelles est la capitale de la Belgique”

 */
for (pays, capitale) in capitals where capitale.hasPrefix("B") {
    print("\(capitale) est la capitale de \(pays)")
}
 
//: [Previous](@previous)  |  page 2 of 6  |  [Next: Exercise - While Loops](@next)
