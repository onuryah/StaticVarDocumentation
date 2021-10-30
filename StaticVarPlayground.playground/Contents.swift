import UIKit

class Animals {
    
    
    //    height is a entity before defination of static var
    var height = 0

//    Static var defination and others property defination.
    static var bird = Animals()
    var name = ""
    var weight = 10
    var flyable = true
    
//    Defination of func within staticVar usage
    func staticEat() {
        Animals.bird.weight += 1
    }
    
//    Defination of normal var usage
    func normalEat() {
        weight += 1
    }
}


// All usage types of the entitiy that get all inheritances from Animals Class
var rabbit = Animals()
rabbit.weight = 40
rabbit.name = "Mike"
rabbit.flyable = false
rabbit.height = 5

rabbit.normalEat()
rabbit.weight

// staticEat func doesn't work. Because this func works for birds that defination with staticVar.
rabbit.staticEat()
rabbit.weight



//All usage types of the entitiy that created with staticVar in Class.
Animals.bird.weight = 10
Animals.bird.name = "Jake"
Animals.bird.flyable = true

//height that is a entity before defination of static var works
Animals.bird.height = 30

Animals.bird.normalEat()
Animals.bird.weight

//That two funcs work!
Animals.bird.staticEat()
Animals.bird.weight



//All usage types of the entitiy that copy of  bird that is definated staticVar.
var bat = Animals.bird
bat.weight
bat.name
bat.flyable
bat.height


//Bat gets her properties from bird via "Inheritance".
bat.normalEat()
bat.weight


//That two funcs work!
bat.staticEat()
bat.weight






