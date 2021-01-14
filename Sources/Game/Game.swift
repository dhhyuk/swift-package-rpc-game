import Player
import HandSign

struct Game {
    let players: [Player]

    init(players: [Player]) {
        self.players = players
    }

    func play() -> [Player]? {
        let handSignGroup = Dictionary(grouping: players, by: { $0.throwing() })
        guard handSignGroup.count == 2 else {
            return nil
        }
        let handSigns = Array(handSignGroup.keys)
        let lhs = handSigns[0]
        let rhs = handSigns[1]

        return handSignGroup[lhs > rhs ? lhs : rhs]
    }
}

extension HandSign: Comparable {
    public static func <(lhs: HandSign, rhs: HandSign) -> Bool {
        switch (lhs, rhs) {
        case (.rock, .paper),
            (.paper, .scissors),
            (.scissors, .rock):
            return true
        default:
            return false
        }
    }
}
