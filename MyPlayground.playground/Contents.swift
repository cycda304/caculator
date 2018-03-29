//: Playground - noun: a place where people can play

import UIKit


class Baby {
    private let name: String
    let age: Int
    func eat() {
        print("喝牛奶")
        
    }
    init(name:String,age: Int){
        self.age=age
        self.name=name
            }
    init(){
        name="Peter"
        age=3
    }
    func showName()->String{
        return self.name
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
print(cuteBaby.age)

let cool = SuperBaby(name:"LSR",age:3)



print(cool.showName())


