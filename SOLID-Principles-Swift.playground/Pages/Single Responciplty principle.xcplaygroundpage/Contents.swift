
import Foundation

// protocols
protocol Driving {
    func move()
    func turnLeft()
    func turnRight()
}

protocol Mantainable {
    func fix()
    func addFaul()
}

protocol Comfortable {
    func playCD()
    func turnAircondition()
}


// classes
class DrivingCar {
    func move(){
        print("move")
    }
    func turnLeft(){
        print("turn left")
    }
    func turnRight(){
        print("turn right")
    }
}

class MantainableCar {
    func fix(){
        print("fix")
    }
    func addFaul(){
        print("add faul")
    }
}

class ComfortableCar {
    func playCD(){
        print("play cd")
    }
    func turnAircondition(){
        print("turn aircondition")
    }
}


// main
class Car : Driving, Mantainable, Comfortable {
    
    let driving = DrivingCar()
    let mantainable = MantainableCar()
    let comfortable = ComfortableCar()
    
    func move(){ driving.move() }
    func turnLeft(){ driving.turnLeft() }
    func turnRight(){ driving.turnRight() }
    
    func fix(){ mantainable.fix() }
    func addFaul(){ mantainable.addFaul() }
    
    func playCD(){ comfortable.playCD() }
    func turnAircondition(){ comfortable.turnAircondition() }

}


// calling main class

let car = Car()

car.turnLeft()
car.addFaul()
car.playCD()
