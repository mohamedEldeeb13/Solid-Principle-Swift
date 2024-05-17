
import Foundation

protocol polygon {
    var area : Float { get }
}

class Rectangle : polygon {
    
    var width : Float
    var length : Float
    init(width: Float, length: Float) {
        self.width = width
        self.length = length
    }
    
    var area: Float {
        return width * length
    }
}


class square : polygon {
    var area: Float {
        return pow(side, 2)
    }
    
    var side : Float
    init(side: Float) {
        self.side = side
    }
}


//MARK: this soluton is wrong because length is not nessesary in square but is nessesary because square is inhertace from rectangle , this not correct in liskove principle

//class Client1 {
//    func printArea(rectangle : Rectangle){
//        rectangle.width = 2
//        rectangle.length = 10
//        print(rectangle.area)
//    }
//
//    func execute(){
//        let rectangle = Rectangle()
//        printArea(rectangle: rectangle)
//
//        let square = square()
//        printArea(rectangle: square)
//    }
//}


class Client2 {
    func printArea(polygon : polygon){
        print(polygon.area)
    }
}

let client = Client2()

let rectangle = Rectangle(width: 2, length: 5)
client.printArea(polygon: rectangle)

let square1 = square(side: 2)
client.printArea(polygon: square1)

