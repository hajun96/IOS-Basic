import UIKit


class person {
    var firstName: String
    var lastName: String
    
    init (firstName: String, lastName:String)
    self.firstName = firstName
    self.lastName = lastName
}

func printMyName() {
    print("My name is \(firstName)\(lastName)")
}
}

class Student: person{
    var grades : [Grade] = []
}
