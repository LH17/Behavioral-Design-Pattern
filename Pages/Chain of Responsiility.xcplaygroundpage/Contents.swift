//: [Previous](@previous)

enum Level: Int {
    case state = 1
    case national = 2
    case international = 3
}

class Sports {
    var level: Level
    
    init(level: Level) {
        self.level = level
    }
}

protocol GameManagement {
    var nextLevelManagement: GameManagement? { get set }
    func manage(sports: Sports)
}

class StateSportsTeam: GameManagement {
    var nextLevelManagement: GameManagement?
    
    func manage(sports: Sports) {
        if sports.level.rawValue == 1 {
            print("Managed by State Sports Management")
        } else {
            nextLevelManagement?.manage(sports: sports)
        }
    }
}

class NationalSportsTeam: GameManagement {
    var nextLevelManagement: GameManagement?
    
    func manage(sports: Sports) {
        if sports.level.rawValue == 2 {
            print("Managed by National Sports Management")
        } else {
             nextLevelManagement?.manage(sports: sports)
        }
    }
}

class InternationalSportsTeam: GameManagement {
    var nextLevelManagement: GameManagement?
    
    func manage(sports: Sports) {
        if sports.level.rawValue == 3 {
            print("Managed by International Sports Management")
        } else {
             nextLevelManagement?.manage(sports: sports)
        }
    }
}

let stateSportsTeam = StateSportsTeam()
let nationalSportsTeam = NationalSportsTeam()
let internationalSportsTeam = InternationalSportsTeam()

stateSportsTeam.nextLevelManagement = nationalSportsTeam
nationalSportsTeam.nextLevelManagement = internationalSportsTeam

let sports1 = Sports(level: Level.international)
stateSportsTeam.manage(sports: sports1)

let sports2 = Sports(level: Level.national)
stateSportsTeam.manage(sports: sports2)

let sports3 = Sports(level: Level.state)
stateSportsTeam.manage(sports: sports3)

//: [Next](@next)
