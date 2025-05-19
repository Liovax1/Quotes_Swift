/*:
 # Les Dictionnaires
 
 
 Les compétences attendues pour la série d'exercices suivante sont :
 1. Savoir utiliser un Dictionnaire (Ajouter, Lire, Modifier et suppriméer une donnée.)
 2. Respecter les convention de nomination d'un tableau (au pluriels **S**)
 3. Comprendre le system de Key / Value.

 ## Exercice 9/11 :

 Créez un dictionnaire "days" [String: Int] pouvant être utilisé pour rechercher le nombre de jours d'un mois donné. Utilisez un dictionnaire pour l'initialiser avec janvier, février et mars. Janvier contient 31 jours, 28 février et 31 mars. Imprimez le dictionnaire. Imprimez days
 */
var days:[String:Int] = ["janvier":31, "février":28, "mars":31]
print(days)
/*:
 ## Exercice 10/11 :
 Utilisez la bonne syntaxe pour ajouter Avril à days avec une valeur de 30. Imprimez days.
 */
days["avril"] = 30
print(days)
/*:
 ## Exercice 11/11 :
 C'est une année bissextile ! Mettez à jour le nombre de jours en février à 29 en utilisant la méthode updateValue (_ , forKey:). Imprimez le dictionnaire.
 */
days.updateValue(29, forKey: "février")
print(days)

//: [Previous](@previous)  |  page 2 sur 2  
