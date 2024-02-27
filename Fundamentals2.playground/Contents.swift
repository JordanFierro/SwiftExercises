//  Exercise 1: Declaring and Unwrapping Optionals
//  Declare an optional string variable named nickname that initially has no
//  value. Then assign a value and safely unwrap it with an if let statement to
//  print it.

// Write your code below:
//var nickname: String?
//
//nickname = "Jimmy"
//
//if let name = nickname {
//    print("Nickname: \(name)")
//} else {
//    print("No nickname")
//}




// Exercise #2: Create a class `Person` with an optional property `nickname`. Then instantiate a `Person` and use optional chaining to print the nickname if it exists.

// Write your code below:
class Person {
    static var numberOfPeople = 0
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        
        Person.numberOfPeople += 1
    }
    
    var firstName: String
    var lastName: String
    var nickname: String?
    
    var fullName: String {
        get {
            "\(firstName) \(lastName)"
        }
    }
            
    class func printNumberOfPeople (){
        print("Number of people: \(Person.numberOfPeople)")
    }
}

let jim = Person(firstName: "Jim", lastName: "Brown")
jim.nickname = "Jimmy"

if let name = jim.nickname {
    print("Nickname is \(name)")
} else {
    print("No nickname")
}

print("Jim's full name is \(jim.fullName)")

Person.printNumberOfPeople()

// Exercise #3: Implicitly Unwrapped Optionals
// An implicitly unwrapped optional is a type of optional that you assume will always have a value after it's first set.
// Below, define a Dog class with a name property and an implicitly unwrapped optional property nickname.
// Then, instantiate a Dog object with and without a nickname, and demonstrate how you might access the nickname.
// In your comments, discuss why using an implicitly unwrapped optional could be beneficial and what risks it might pose.

// Write your code below:

class Dog {
    var name: String
    var nickname: String!  // Implicitly unwrapped optional

    init(name: String, nickname: String? = nil){
        self.name = name
        self.nickname = nickname
    }
}

let dogs = [Dog(name: "dog"), Dog(name: "Sally", nickname: "sam"), Dog(name: "Panda", nickname: "Panther"), Dog(name: "yo")]

for dog in dogs {
    print("\(dog.name) goes by \(dog.nickname ?? dog.name)")
}


// Exercise #4: Type Casting w/ Optionals
//  Create an array of different types (Int, String, Double) as [Any], then write a function that iterates over the array and prints the type and value of each element using optional casting.

// Write your code below:
let mixedArray: [Any] = [42, "pie", 3.14, "string", 4242.44, 57]

func printTypesAndValues(from array: [Any]) {
    for element in array {
        if let intValue = element as? Int {
            print("Int: \(intValue)")
        } else if let stringValue = element as? String {
            print("String: \(stringValue)")
        } else if let doubleValue = element as? Double {
            print("Double: \(doubleValue)")
        } else {
            print("Unknown value")
        }
    }
}

printTypesAndValues(from: mixedArray)
// Exercise #5: Advanced Optional Handling with guard
// Create a Cat class that includes a method that uses 'guard let' to safely unwrap the nickname

// Write your code below:
class Cat {
    var name: String
    var nickname: String?
    
    init(name: String, nickname: String? = nil) {
        self.name = name
        self.nickname = nickname
    }
    
    func printNicknames() {
        guard let nickname = self.nickname else {
            print("\(self.name) does not have a nickname.")
            return
        }
        print("\(self.name) nickname is \(nickname)")
    }
}

let cats = [Cat(name: "Whiskers"), Cat(name: "Buddy", nickname: "Cum guzzle")]

for cat in cats {
    cat.printNicknames()
}
