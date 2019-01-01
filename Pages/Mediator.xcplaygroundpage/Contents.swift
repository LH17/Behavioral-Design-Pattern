//: [Previous](@previous)

protocol Receiver {
    var name: String { get }
    func receive(message: String)
}

protocol Sender {
    var teams: [Receiver] { get set }
    func send(message: String, sender: Receiver)
}

class Mediator: Sender {
    var teams: [Receiver] = []
    
    func register(candidate: Receiver) {
        teams.append(candidate)
    }
    
    func send(message: String, sender: Receiver) {
        for team in teams {
            if team.name != sender.name {
                 team.receive(message: message)
            }
        }
    }
}

struct TeamA: Receiver {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func receive(message: String) {
        print("\(name) received: \(message)")
    }
}

struct TeamB: Receiver {
    var name: String
    
    init(name: String) {
       self.name = name
    }
    
    func receive(message: String) {
        print("\(name) received: \(message)")
    }
}

let mediator = Mediator()
let teamA = TeamA(name: "The Avengers")
let teamB = TeamB(name: "The League of Extraordinary Gentlemen")
mediator.register(candidate: teamA)
mediator.register(candidate: teamB)

mediator.send(message: "Selected for final! from \(teamA.name)", sender: teamA)
mediator.send(message: "Not selected for final! from \(teamB.name)", sender: teamB)

//: [Next](@next)
