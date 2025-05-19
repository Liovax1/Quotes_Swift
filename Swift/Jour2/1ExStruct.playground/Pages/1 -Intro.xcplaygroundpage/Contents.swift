

/*:
 ## Exercice – Créer une structure `Book`

 Créez une structure appelée `Book` pour représenter un livre dans une bibliothèque.

 Elle devra contenir les propriétés suivantes :
 - `title` de type `String`
 - `author` de type `String`
 - `pages` de type `Int`
 */
struct Book {
    var title: String = ""
    var author: String = ""
    var pages: Int = 0
}
/*:
 ###  Tester l'initialiseur membre par membre (`memberwise initializer`)

 Utilisez l'initialiseur automatique généré par Swift pour créer une instance de la structure `Book`.

 1. Créez une instance de `Book` nommée `myBook`
 2. Donnez-lui comme titre `"Le Petit Prince"`, auteur `"Antoine de Saint-Exupéry"`, et nombre de pages `96`
 3. Affichez les infos du livre dans la console avec une phrase de type :
 `"Le livre 'Le Petit Prince' écrit par Antoine de Saint-Exupéry contient 96 pages."`
 */
var myBook = Book(title: "Le Petit Prince", author: "Antoine de Saint-Exupéry", pages: 96)
print("Le livre '\(myBook.title)' écrit par \(myBook.author) contient \(myBook.pages) pages.")
/*:
### Valeurs par défaut
Modifiez la structure `Book` pour que certaines propriétés aient des **valeurs par défaut** :


 - `author` valeur par défaut : chaîne vide


 Ensuite :
 1. Créez une nouvelle instance `defaultBook` **sans passer d'arguments**
 2. Créez une autre instance `shortBook` en fournissant **seulement le titre**
 3. Affichez les deux instances pour observer les valeurs affectées automatiquement


 */
var defaultBook = Book()
var shortBook = Book(title: "test titre")

print("defaultBook: \(defaultBook)")
print("shortBook: \(shortBook)")
//: [Next](@next)
