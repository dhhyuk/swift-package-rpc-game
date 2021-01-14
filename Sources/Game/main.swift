import Player

let game = Game(
    players: [
        Player(name: "DongHyuk"),
        Player(name: "James"),
        Player(name: "Kevin")
    ]
)

let winners = game.play()

if let winners = winners {
    print("Winner is \(winners.map { $0.name }.joined(separator: ", "))!")
} else {
    print("Nobody win..")
}
