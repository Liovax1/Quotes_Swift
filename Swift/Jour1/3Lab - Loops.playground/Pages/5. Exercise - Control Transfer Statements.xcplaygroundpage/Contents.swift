/*:
 ## Alphabet
 
 Créez une boucle for-in qui parcourt les caractères de l'alphabet et imprime toutes les lettres en continuant à la prochaine itération.
 */
var alphabet: String = ""
for i in 97...122 {
    alphabet.append(String(UnicodeScalar(i)!))
}
print(alphabet)

//: [Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Finding Movements](@next)
