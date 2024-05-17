//: [Previous](@previous)

import Foundation
protocol PrintDetails {
    func printDetails() -> String
}



class Student : PrintDetails {
    var name: String
    var id : Int
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
    func printDetails()-> String{
        return "this student details \(name) + \(id)"
    }
}


class Course : PrintDetails {
    var name: String
    init(name: String) {
        self.name = name
    }
    func printDetails()-> String{
        return "this student details \(name)"
    }
}



class Logger {
    func PrintData(){
        let objects : [PrintDetails] =
        [
            Student(name: "mohamed", id: 1),
            Student(name: "Ahmed", id: 2),
            Student(name: "Ali", id: 3),
            Course(name: "Math"),
            Course(name: "Physical"),
            Course(name: "Arabic"),
            Course(name: "English"),
        ]
        objects.forEach { student in
            print(student.printDetails())
        }
    }
}

let logger = Logger()

logger.PrintData()
    
    
