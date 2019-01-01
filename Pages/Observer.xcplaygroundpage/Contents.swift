//: [Previous](@previous)

protocol Observable {
    func add(customer: Observer)
    func remove(customer : Observer)
    func notify()
}

protocol Observer {
    var id: Int { get set }
    func update()
}

class AppleSeller: Observable {
    private var observers: [Observer] = []
    private var count: Int = 0
    
    var appleCount: Int {
        set {
            count = newValue
            notify()
        }
        get {
            return count
        }
    }
    
    func add(customer: Observer) {
        observers.append(customer)
    }
    
    func remove(customer : Observer) {
        observers = observers.filter{ $0.id != customer.id }
    }
    
    func notify() {
        for observer in observers {
            observer.update()
        }
    }
}

class Customer: Observer {
    var id: Int
    var observable: AppleSeller
    var name: String
    
    init(name: String, observable: AppleSeller, customerId: Int) {
        self.name = name
        self.observable = observable
        self.id = customerId
        self.observable.add(customer: self)
    }

    func update() {
         print("Hurry \(name)! \(observable.appleCount) apples arrived at shop.")
    }
}

let appleSeller = AppleSeller()
let james = Customer(name: "James", observable: appleSeller, customerId: 101)
let david = Customer(name: "David", observable: appleSeller, customerId: 102)

appleSeller.appleCount = 10
appleSeller.remove(customer: james)
appleSeller.appleCount = 20
//: [Next](@next)
