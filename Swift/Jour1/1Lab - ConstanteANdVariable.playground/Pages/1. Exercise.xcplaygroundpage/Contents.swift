/*:
 # Les constantes et les variables
 - **[En savoir plus sur les variables](https://www.pixel-swift.com/project/les-variables/ "Les commentaires")**

 - **[En savoir plus sur les constantes](https://www.pixel-swift.com/project/les-constantes/ "Les commentaires")**
 
 Les compétences attendues pour la série d'exercices suivante sont :
 1. Savoir utiliser une constante
 2. Savoir utiliser une variable
 3. Respecter les convention de nomination (en anglais 🏴󠁧󠁢󠁥󠁮󠁧󠁿, en camelCase 🐫)
 4. Utiliser les commentaires
 5. Utiliser les différents types de données

 
 
 
 ## Exercice 1/12 : Créer une constante pour stocker le nom d'utilisateur
 1. Créez une contante userName et attribuez-lui la valeur "Alice".
 2. Utilisez la fonction print() pour afficher la valeur de userName.
 */
let userName: String = "Alice"
print(userName)
/*:
 ## Exercice 2/12 : Créer une variable pour stocker l'âge minimum
 1. Créez une variable minimumAge et attribuez-lui la valeur 13.
 2. Utilisez la fonction print() pour afficher la valeur de minimumAge.
 */
var minimumAge:Int = 13
print(minimumAge)
/*:
 ## Exercice 3/12 : Modifier l'âge minimum
 1. Changez la valeur de la variable minimumAge à 12.
 2. Utilisez la fonction print() pour afficher la nouvelle valeur de userName.
*/
minimumAge = 12
print(userName + " a \(minimumAge) ans")
/*:
 ## Exercice 4/12 : Créer une variable pour stocker l'adresse email
 1. Créez une variable email et attribuez-lui la valeur "alice@example.com".
 2. Utilisez la fonction print() pour afficher la valeur de email.
*/
var email:String = "alice@example.com"
print(email)

/*:
 ## Exercice 5/12 : Modifier l'adresse email
 1. Changez la valeur de la variable email à "bob@example.com".
 2. Utilisez la fonction print() pour afficher la nouvelle valeur de email.
*/
email = "bob@example.com"
print(email)


/*:
 ## Exercice 6/12 : Créer une variable newUsername qui stock la constante userName
 1. Créer une variable newUsername qui stock la constante userName
 2. Changer la valeur de newUsername par "Bob"
 3. Utilisez la fonction print() pour afficher la valeur de newUsername.
*/
var newUsername = userName
print(newUsername) // Pour voir avant modification
newUsername = "Bob"
print(newUsername)
/*:
 ## Exercice 7/12 : Créer une variable pour stocker le nombre d'amis
 1. Créez une variable friendCount et attribuez-lui la valeur 0.
 2. Utilisez la fonction print() pour afficher la valeur de friendCount.
*/
var friendCount = 0
print(friendCount)
/*:
 ## Exercice 8/12 : Ajouter un ami
 1. Mettez à jour la variable friendCount à 1.
 2. Utilisez la fonction print() pour afficher la nouvelle valeur de friendCount.
*/
friendCount = 1
print(friendCount)


//: page 1 sur 2  |  [Next:](@next)
