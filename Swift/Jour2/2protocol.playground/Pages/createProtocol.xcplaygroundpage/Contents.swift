//: [Previous](@previous)
/*:
## Exercise - Create a Protocol
 Créez un protocole appelé `Vehicle` avec deux exigences : une propriété `numberOfWheels` non réglable de type `Int` et une fonction appelée `drive()`. */
protocol Vehicle {
    var numberOfWheels: Int { get }
    func drive()
}
//:  Définissez une structure `Car` qui implémente le protocole `Vehicle`. `numberOfWheels` doit renvoyer une valeur de 4 et `drive()` doit afficher "Vroom, vroom!" Créez une instance de `Car`, imprimez son nombre de roues, puis appelez `drive()`.
struct Car: Vehicle {
    var numberOfWheels: Int {
        return 4
    }
    
    func drive() {
        print("Vroom, vroom!")
    }
}
var myCar = Car()
print("Number of wheels: \(myCar.numberOfWheels)")
myCar.drive()

//:  Définissez une structure `Bike` qui implémente le protocole `Vehicle`. `numberOfWheels` devrait renvoyer une valeur de 2, et `drive()` devrait afficher "Begin pedaling!". Créez une instance de `Bike`, imprimez son nombre de roues, puis appelez `drive()`.

struct Bike: Vehicle {
    var numberOfWheels: Int {
        return 2
    }
    
    func drive() {
        print("Begin pedaling!")
    }
}
var myMike = Bike()
print( "Number of wheels: \(myMike.numberOfWheels)")
myMike.drive()


