//: [Previous](@previous)

import UIKit

typealias MementoType = [String: Any]

protocol Memento: class {
    var key: String  { get set }
    var state: MementoType { get set }
    
    func save()
    func retrieve()
}

extension Memento {
    func save() {
        UserDefaults.standard.set(state, forKey: key)
    }
    
    func retrieve() {
        state = (UserDefaults.standard.object(forKey: key) as? MementoType) ?? MementoType()
    }
}

class Profile: Memento {
    var key: String
    var state: MementoType
    
    var name: String
    var age: Int
    
    init(name: String, age: Int, key: String) {
        self.name = name
        self.age = age
        self.key = key
        self.state = MementoType()
    }
    
    func saveDetails() {
        state["name"] = name
        state["age"] = age
        save()
    }
    
    init(key: String) {
        self.key = key
        
        self.state = MementoType()
        self.name = ""
        self.age = 0
    }
    
    func retrieveDetails() -> MementoType {
        retrieve()
        return state
    }
}

var profile = Profile(name: "Nick Jonas", age: 36, key: "NickProfile")
profile.saveDetails()

profile = Profile(name: "Priyanka Chopra", age: 26, key: "PriyankaProfile")
profile.saveDetails()

let profile1Details = Profile(key: "PriyankaProfile")
let profileState = profile1Details.retrieveDetails()
print(profileState)
//: [Next](@next)
