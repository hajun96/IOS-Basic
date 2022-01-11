import UIKit

struct Person{
    var firstName: String {
        willSet {
            print("willSet: \(firstName) --> \(newValue)")
        }
        didSet {
            print("didSet: \(oldValue) --> \(firstName)")
        }
    }
    var lastName: String
    var fullName: String{
        get{
            return "\(firstName) \(lastName)"
        }
        set{
            if let firstName = newValue.components(separatedBy: "").first{
                self.firstName = firstName
            }
            if let lastName = newValue.components(separatedBy: "").first{
                self.lastName = lastName
            }
        }
    }
    static let isAlien: Bool = false
}

var personname = Person(firstName: "jeon", lastName: "hajun")


personname.firstName
personname.lastName

personname.firstName = "mason"
personname.lastName = "mount"

personname.firstName
personname.lastName
personname.fullName

personname.fullName = "jay Park"

Person.isAlien
