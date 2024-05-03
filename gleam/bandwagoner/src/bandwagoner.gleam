// This challenge helps learn labelled fields
// When a custom type holds data its called a record and each values resides in a field

pub type Coach {
  Coach(name: String, former_player: Bool)
}

pub type Stats {
  Stats(wins: Int, losses: Int)
}

pub type Team {
  Team(name: String, coach: Coach, stats: Stats)
}

pub fn create_coach(name: String, former_player: Bool) -> Coach {
  Coach(name: name, former_player: former_player)
}

pub fn create_stats(wins: Int, losses: Int) -> Stats {
  Stats(wins: wins, losses: losses)
}

pub fn create_team(name: String, coach: Coach, stats: Stats) -> Team {
  Team(name: name, coach: coach, stats: stats)
}

pub fn replace_coach(team: Team, coach: Coach) -> Team {
  let new_team = Team(..team, coach: coach)
  new_team
}

pub fn is_same_team(home_team: Team, away_team: Team) -> Bool {
  home_team == away_team
}

pub fn root_for_team(team: Team) -> Bool {
  team.coach.name == "Greg Popovich"
  || team.coach.former_player
  || team.name == "Chicago Bulls"
  || team.stats.wins >= 60
  || team.stats.losses > team.stats.wins
  // case team {
  //   Team(coach: c, ..) if c.name == "Greg Popovich" -> True
  //   Team(coach: c, ..) if c.former_player -> True
  //   Team(name: n, ..) if n == "Chicago Bulls" -> True
  //   Team(stats: s, ..) if s.wins >= 60 -> True
  //   Team(stats: s, ..) if s.wins < s.losses -> True
  //   _ -> False
  // }
}
