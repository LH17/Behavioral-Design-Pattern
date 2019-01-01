//: [Previous](@previous)

protocol Human {
    // MARK: - Getter
    func getState() -> ManState
    // MARK: - Setter
    func set(state: ManState)
}

protocol ManState {
    func stand()
    func walk()
    func run()
    
    func toString() -> String
}

extension ManState {
    func stand() {}
    func walk() {}
    func run() {}
}

class Man: Human {
    
    var state: ManState?

    init() {
        state = nil
    }

    func set(state: ManState) {
        self.state = state
    }
    
    func getState() -> ManState {
        return state!
    }
}

class StandingState: ManState {
    
    var human: Human
    init(_ human: Human) {
        self.human = human
    }
    
    func stand() {
        print("The man is in standing position")
        human.set(state: self)
    }
    
    func toString() -> String {
        return "Standing State"
    }
}

class WalkingState: ManState {
    
    var human: Human
    init(_ human: Human) {
        self.human = human
    }
    
    func walk() {
        print("The man is in walking position")
        human.set(state: self)
    }
    
    func toString() -> String {
        return "Walking State"
    }
}

class RunningState: ManState {
    
    var human: Human
    init(_ human: Human) {
        self.human = human
    }
    
    func run() {
        print("The man is in running position")
        human.set(state: self)
    }
    
    func toString() -> String {
        return "Running State"
    }
}

let man = Man()

let walkingState = WalkingState(man)
walkingState.walk()
print(man.getState().toString())

let runningState = RunningState(man)
runningState.run()
print(man.getState().toString())

//: [Next](@next)
