/*:
## Exercice  – Protocoles : `CustomStringConvertible`, `Equatable`, `Comparable`

Dans cet exercice, vous allez explorer progressivement plusieurs protocoles utiles en Swift. Vous commencerez sans protocole, puis vous les ajouterez un par un pour comprendre leur utilité.
*/


/*:
### Étape 1 : Créer une struct sans protocole
Créez une structure `Human` avec deux propriétés : `name` de type `String` et `age` de type `Int`.
 Créez ensuite une instance de cette structure et affichez-la avec `print`.
*/
struct Human {
    var name: String
    var age: Int
}

var human = Human(name: "Alice", age: 25)
print(human)
/*:
### Étape 2 : Améliorer l'affichage avec `CustomStringConvertible`
Adoptez le protocole `CustomStringConvertible` pour afficher une phrase personnalisée.
*/
extension Human: CustomStringConvertible {
    var description: String {
        return "\(name) a \(age) ans."
    }
}
/*:
### Étape 3 : Comparer deux humains avec `Equatable`
Ajoutez une deuxième instance `person2` et faites en sorte que `Human` adopte `Equatable`. Deux `Human` sont égaux si leurs `name` et `age` sont identiques.
*/
extension Human: Equatable {}

let person2 = Human(name: "Alice", age: 25)

print(human == person2)


extension Human: Comparable {
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
}

let humans = [
    Human(name: "Alice", age: 25),
    Human(name: "Bob", age: 30),
    Human(name: "Charlie", age: 20)
]

let sortedHumans = humans.sorted()
print(sortedHumans)


//: [Next](@next)
