//: [Previous](@previous)
/*:
 ## Exercice  – Accéder aux propriétés

 1. Créez une instance `book1` de `Book` avec les valeurs suivantes :
     - title : "1984"
     - author : "George Orwell"
     - pages : 328


*/
struct Book {
    var title: String = ""
    var author: String = ""
    var pages: Int = 0
}

var book1 = Book(title: "1984", author: "George Orwell", pages: 328)




/*:
 2. Affichez le nombre de pages avec  la commande `print`
 */
print ("Il y a \(book1.pages) pages dans le livre")
/*:
 3. Que se passe-t-il si vous essayez `Book.pages` ? Essayez et observez l'erreur.
*/
//print ("Il y a \(Book.pages) pages dans le livre")
// Instance member 'pages' cannot be used on type 'Book'; did you mean to use a value of this type instead?


/*:
 > Les propriétés comme pages sont propres à chaque livre. Pour que Book.pages fonctionne, il faudrait que pages soit une propriété static, c’est-à-dire partagée par tous les livres.
 */


//: [Next](@next)
