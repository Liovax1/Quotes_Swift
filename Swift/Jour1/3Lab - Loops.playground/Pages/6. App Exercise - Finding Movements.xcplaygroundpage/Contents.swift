/*:
 ## Jeux vidéo
 
 Vous jouez à votre jeu vidéo favori, vous engagez un combat. Vous commencez un combat avec 10 points de vie. L'ennemi qui vous attaque a 9 points de vie. L'ennemi vous fait 1 point de dégât à chaque fois qu'il vous touche. Vous faites 2 points de dégâts quand vous touchez l'ennemi.

 À l'aide d'une boucle while, faites en sorte qu'à chaque itération vous soyez touché par l'ennemi et que l'ennemi vous touche également. Imprimez vos points de vie restants à chaque itération, faites de même pour l'ennemi.

 Faites en sorte d'afficher "Game Over" si vous avez 0 point de vie ou moins de 0 point de vie. Si c'est l'ennemi qui a 0 point de vie ou moins de 0 point de vie, imprimez "Vous avez vaincu l'ennemi !!
*/
var viesJoueur = 10
var viesEnnemi = 9

while viesJoueur > 0 && viesEnnemi > 0 {
    viesJoueur -= 1
    viesEnnemi -= 2
    print("Vous avez \(viesJoueur) point de vie")
    print("L'ennemi a \(viesEnnemi) point de vie")
    
    if viesJoueur <= 0 {
        print("Game Over")
    }
    else if viesEnnemi <= 0 {
        print("Vous avez vaincu l'ennemi !!")
    }
}
//: [Previous](@previous)

//: [Previous](@previous)  |  page 6 of 6
