
struct MyBestFilms: Sequence {
    let films: [String]
    
    func makeIterator() -> MyBestFilmsIterator {
        return MyBestFilmsIterator(films)
    }
}

struct MyBestFilmsIterator: IteratorProtocol {
    
    var films: [String]
    var cursor: Int = 0

    init(_ films: [String]) {
        self.films = films
    }
    
    mutating func next() -> String? {
        defer { cursor += 1 }
        return films.count > cursor ? films[cursor] : nil
    }
}

// Usage

let myFilms = MyBestFilms(films: ["Godfather Trilogy", "Silence of the Lambs", "Call Me By Your Name"])

for film in myFilms {
    print(film)
}



