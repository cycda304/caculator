//: Playground - noun: a place where people can play

import UIKit


class Baby {
    func eat() {
        print("喝牛奶")
        
    }
    
}
class SuperBaby: Baby {
    override func eat() {
    super.eat()
        print("喝珍奶")
    
    }
    
}
var cuteBaby = SuperBaby()
cuteBaby.eat()
