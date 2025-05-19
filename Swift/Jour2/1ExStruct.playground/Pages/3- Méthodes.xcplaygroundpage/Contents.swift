
//: [Previous](@previous)
/*:
  ## Exercice  – Ajouter une méthode

  Ajoutez à la structure `Book` une fonction `describe()` qui affiche une phrase décrivant le livre.
  Exemple attendu : `"📖 'Le Petit Prince' par Antoine de Saint-Exupéry - 96 pages"`
  Appelez ensuite cette méthode sur `myBook`.
  */
struct Book {
    var title: String
    var author: String
    var pages: Int
    
    var isLong: Bool {
            return pages > 300
        }
    
    func describe() -> String {
        return "📖 '\(title)' par \(author) - \(pages) pages"
        
    }
}

var myBook = Book(title: "Le Petit Prince", author: "Antoine de Saint-Exupéry", pages: 96)
myBook.updatePages(to: 301)

print(myBook.describe())
print("Plus de 300 pages ? \(myBook.isLong)")



/*:
  Ajoutez une fonction `updatePages(to:)` à la structure `Book`, qui tente de modifier la propriété `pages`.

  Exemple :
  ```swift
  func updatePages(to newValue: Int) {
      pages = newValue
  }
 */
extension Book {
    mutating func updatePages(to newValue: Int) {
        pages = newValue
    }
}

/*:
 Modifiez la fonction `updatePages(to:)` pour qu’elle fonctionne.

 - Ajoutez le mot-clé `mutating` devant la fonction
 - Testez à nouveau en appelant la fonction sur une variable `var` (et non `let`)
 */
// Fait


//: [Next](@next)


