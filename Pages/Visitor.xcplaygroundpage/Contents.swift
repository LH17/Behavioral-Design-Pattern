//: [Previous](@previous)

protocol Country {
    func accept(visitor: CountryVisitor)
}

protocol CountryVisitor {
    func visit(country: India)
    func visit(country: Brazil)
    func visit(country: China)
}

class India: Country {
    func accept(visitor: CountryVisitor) {
        visitor.visit(country: self)
    }
}

class Brazil: Country {
    func accept(visitor: CountryVisitor) {
        visitor.visit(country: self)
    }
}

class China: Country {
    func accept(visitor: CountryVisitor) {
        visitor.visit(country: self)
    }
}

class CountryVisitorName: CountryVisitor {
    var visitorName = ""
    
    func visit(country: India) {
        visitorName = "Chen"
    }
    
    func visit(country: Brazil) {
         visitorName = "Ramesh"
    }
    
    func visit(country: China) {
         visitorName = "Antonio"
    }
}
let countries: [Country] = [India(), Brazil(), China()]

let names = countries.map { (country: Country) -> String in
    let visitor = CountryVisitorName()
    country.accept(visitor: visitor)
    return visitor.visitorName
}

print(names)

//: [Next](@next)
