class Game {
  final GameName name;
  final List<GameMode> modes;
  final List<GameMap> maps;
  final List<GameType> types;
  final List<GameServer> servers;
  final int players;

  Game({
    required this.name,
    required this.modes,
    required this.maps,
    required this.types,
    required this.servers,
    required this.players,
  });

  static List<Game> gamesData() {
    return [
      Game(
        name: GameName.PUBGMobile,
        modes: [GameMode.FPP, GameMode.TPP],
        maps: [
          GameMap.Erangel,
          GameMap.Karakin,
          GameMap.Miramar,
          GameMap.Sanhok,
          GameMap.Vikendi
        ],
        types: [GameType.Solo, GameType.Duo, GameType.Squad],
        servers: [
          GameServer.Asia,
          GameServer.Europe,
          GameServer.KRJP,
          GameServer.MiddleEast,
          GameServer.NorthAmerica,
          GameServer.SouthAmerica
        ],
        players: 100,
      ),
      Game(
        name: GameName.PUBGMobileLite,
        modes: [GameMode.TPP],
        maps: [
          GameMap.Varenga,
          GameMap.GoldenWoods,
        ],
        types: [GameType.Solo, GameType.Duo, GameType.Squad],
        servers: [
          GameServer.Asia,
          GameServer.Europe,
          GameServer.NorthAmerica,
          GameServer.SouthAmerica
        ],
        players: 60,
      ),
      Game(
        name: GameName.FreeFire,
        modes: [GameMode.TPP],
        maps: [
          GameMap.Bermuda,
          GameMap.Haven,
          GameMap.Kalahari,
        ],
        types: [GameType.Solo, GameType.Duo, GameType.Squad],
        servers: [
          GameServer.MiddleEast,
          GameServer.NorthAmerica,
          GameServer.SouthAmerica
        ],
        players: 80,
      ),
    ];
  }
}

enum GameName {
  PUBGMobile,
  PUBGMobileLite,
  FreeFire,
  CODMobile,
}

enum GameMode { TPP, FPP }

enum GameMap {
  Erangel,
  Miramar,
  Vikendi,
  Sanhok,
  Karakin,
  Paramo,
  Haven,
  Varenga,
  GoldenWoods,
  Bermuda,
  Purgatory,
  Kalahari,
}

enum GameType {
  Solo,
  Duo,
  Squad,
}

enum GameServer {
  Asia,
  Europe,
  SouthAmerica,
  NorthAmerica,
  MiddleEast,
  KRJP,
}
