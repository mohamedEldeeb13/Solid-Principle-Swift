
import Foundation

struct User {
    var id , name : String
}

protocol fetchUser {
    func getUser(id : String , user : [User])-> Void
}

protocol fetchUsers {
    func getUsers(onComplete : [User]) -> Void
}

class Login : fetchUser {
    func getUser(id: String, user: [User]) {
        print("one user")
    }
}

class AllUsers : fetchUsers {
    func getUsers(onComplete: [User]) {
        print("all user")
    }
}
