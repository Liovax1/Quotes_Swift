/*:
 # Les Array (Tableau)
 - **[En savoir plus sur les arrays](https://www.pixel-swift.com/project/array/ "Les arrays")**

 Les compétences attendues pour la série d'exercices suivante sont :
 1. Savoir utiliser un array (Ajouter, Lire, Modifier et suppriméer une donnée.)
 2. Respecter les convention de nomination d'un tableau (au pluriels **S**)
 3. Comprendre l'indexation dans un tableau.

 ## Exercice 1/11 : Création d'un tableau vide

 Vous êtes sur le point de faire vos courses et vous avez besoin d'un panier pour y mettre vos achats. Nous vous mettons un tableau vide à disposition qui représentera le panier.
 */
var mesCourses:[String] = []
/*:
 ## Exercice 2/11 : Remplir le panier avec des fruits

 Vous vous dirigez vers le rayon des fruits et vous choisissez 3 fruits différents. Ajoutez ces 3 fruits à votre panier de courses, puis affichez le contenu du panier pour vérifier qu'ils y sont bien.
 */
mesCourses = ["Bananes", "Pommes", "Melon"]
print(mesCourses)
/*:
 ## Exercice 3/11 : Ajout de légumes au panier

 En continuant vos courses, vous arrivez au rayon des légumes. Sélectionnez 2 légumes différents et ajoutez-les à votre panier de courses. Affichez à nouveau le contenu du panier pour vous assurer que les légumes y ont été ajoutés.
 */
mesCourses.append("Tomates")
mesCourses.append("Concombre")
print(mesCourses)
/*:
 ## Exercice 4/11 : Remplacement d'un article

 En parcourant les allées, vous réalisez que vous avez pris un fruit que vous n'aimez pas. Remplacez ce fruit par un autre fruit de votre choix et affichez le contenu du panier pour vérifier que le remplacement a été effectué.
 */
mesCourses[1] = "Pasteque"
print(mesCourses)
/*:
 ## Exercice 5/11 : Suppression d'un article

 Vous changez d'avis et décidez de ne pas acheter l'un des légumes précédemment ajoutés au panier. Supprimez ce légume du panier et affichez le contenu du panier après suppression pour vous assurer qu'il a été retiré.
 */
mesCourses.remove(at: 4)
print(mesCourses)
/*:
 ## Exercice 6/11 : Vérification du nombre d'articles dans le panier

 Avant de passer à la caisse, vous voulez vérifier le nombre d'articles dans votre panier. Calculez le nombre d'éléments dans votre panier de courses et affichez-le à l'écran. (Il existe certainement une methode swift pour compter le nombre d'éléments dans un tableau, peut-être qu'on peut en savoir plus avec une recherche web. 😎 )
 */
print(mesCourses.count)
/*:
 ## Exercice 7/11 : Recherche d'un article dans le panier

 En vous approchant de la caisse, vous vous demandez si vous avez bien pris un certain fruit. Parcourez votre panier de courses et vérifiez si le fruit recherché s'y trouve. Si le fruit est présent, affichez un message indiquant qu'il est dans le panier et donnez son index. Sinon, affichez un message indiquant qu'il n'est pas présent dans le panier.
 */
if mesCourses.contains("Bananes") {
    print("J'ai bien des bananes dans mon panier à l'index \(mesCourses.firstIndex(of: "Bananes")!)")
}
else {
    print("Je n'ai pas de bananes dans mon panier")
}
/*:
 ## Exercice 8/11 : Vider le panier après passage en caisse

 Après avoir passé la caisse et vidé votre panier de courses dans des sacs, vous devez vider le tableau représentant le panier. Videz le tableau, puis affichez le contenu du panier pour vérifier qu'il est bien vide.
 */
mesCourses.removeAll()
print(mesCourses)
//: page 1 sur 2  |  [Next:](@next)
