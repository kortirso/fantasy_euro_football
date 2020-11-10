# frozen_string_literal: true

championship = Championship.create(
  name: { en: 'Russian Premier League', ru: 'Российская Премьер-Лига' }
)

# teams
zenit_team = Team.create(
  name:         { en: 'Zenit', ru: 'Зенит' },
  championship: championship
)

spartak_team = Team.create(
  name:         { en: 'Spartak', ru: 'Спартак' },
  championship: championship
)

cska_team = Team.create(
  name:         { en: 'CSKA', ru: 'ЦСКА' },
  championship: championship
)

lokomotiv_team = Team.create(
  name:         { en: 'Lokomotiv', ru: 'Локомотив' },
  championship: championship
)

krasnodar_team = Team.create(
  name:         { en: 'Krasnodar', ru: 'Краснодар' },
  championship: championship
)

rostov_team = Team.create(
  name:         { en: 'Rostov', ru: 'Ростов' },
  championship: championship
)

sochi_team = Team.create(
  name:         { en: 'Sochi', ru: 'Сочи' },
  championship: championship
)

# players
# goalkeepers
goalkeeper1 = Player.create(
  name:        { en: 'Alexander Maksimenko', ru: 'Александр Максименко' },
  position:    :goalkeeper,
  team:        spartak_team,
  price_cents: 500
)

goalkeeper2 = Player.create(
  name:        { en: 'Igor Akinfeev', ru: 'Игорь Акинфеев' },
  position:    :goalkeeper,
  team:        cska_team,
  price_cents: 500
)

goalkeeper3 = Player.create(
  name:        { en: 'Marinato Guilherme', ru: 'Маринато Гилерме' },
  position:    :goalkeeper,
  team:        lokomotiv_team,
  price_cents: 500
)

goalkeeper4 = Player.create(
  name:        { en: 'Matvey Safonov', ru: 'Матвей Сафонов' },
  position:    :goalkeeper,
  team:        krasnodar_team,
  price_cents: 500
)

# defenders
defender1 = Player.create(
  name:        { en: 'Mario Fernandes', ru: 'Марио Фернандес' },
  position:    :defender,
  team:        cska_team,
  price_cents: 500
)

defender2 = Player.create(
  name:        { en: 'Yaroslav Rakitskyi', ru: 'Ярослав Ракицкий' },
  position:    :defender,
  team:        zenit_team,
  price_cents: 500
)

defender3 = Player.create(
  name:        { en: 'Samuel Gigot', ru: 'Самуэль Жиго' },
  position:    :defender,
  team:        spartak_team,
  price_cents: 500
)

defender4 = Player.create(
  name:        { en: 'Georgy Dzhikiia', ru: 'Георгий Джикия' },
  position:    :defender,
  team:        spartak_team,
  price_cents: 500
)

defender5 = Player.create(
  name:        { en: 'Vladislav Ignatyev', ru: 'Владислав Игнатьев' },
  position:    :defender,
  team:        lokomotiv_team,
  price_cents: 500
)

Player.create(
  name:        { en: 'Ayrton', ru: 'Айртон' },
  position:    :defender,
  team:        spartak_team,
  price_cents: 500
)

defender7 = Player.create(
  name:        { en: 'Douglas Santos', ru: 'Дуглас Сантос' },
  position:    :defender,
  team:        zenit_team,
  price_cents: 500
)

defender8 = Player.create(
  name:        { en: 'Sergey Petrov', ru: 'Сергей Петров' },
  position:    :defender,
  team:        krasnodar_team,
  price_cents: 500
)

# midfielders
midfielder1 = Player.create(
  name:        { en: 'Grzegorz Krychowiak', ru: 'Гжегож Крыховяк' },
  position:    :midfielder,
  team:        lokomotiv_team,
  price_cents: 700
)

midfielder2 = Player.create(
  name:        { en: 'Nikola Vlasic', ru: 'Никола Влашич' },
  position:    :midfielder,
  team:        cska_team,
  price_cents: 700
)

Player.create(
  name:        { en: 'Magomed Ozdoev', ru: 'Магомед Оздоев' },
  position:    :midfielder,
  team:        zenit_team,
  price_cents: 700
)

midfielder4 = Player.create(
  name:        { en: 'Alex Kral', ru: 'Алекс Крал' },
  position:    :midfielder,
  team:        spartak_team,
  price_cents: 700
)

midfielder5 = Player.create(
  name:        { en: 'Alan Dzagoev', ru: 'Алана Дзагоев' },
  position:    :midfielder,
  team:        cska_team,
  price_cents: 700
)

midfielder6 = Player.create(
  name:        { en: 'Kento Hashimoto', ru: 'Кэнто Хасимото' },
  position:    :midfielder,
  team:        rostov_team,
  price_cents: 700
)

Player.create(
  name:        { en: 'Konstantin Kuchaev', ru: 'Константин Кучаев' },
  position:    :midfielder,
  team:        cska_team,
  price_cents: 700
)

midfielder8 = Player.create(
  name:        { en: 'Alexandr Erokhin', ru: 'Александр Ерохин' },
  position:    :midfielder,
  team:        zenit_team,
  price_cents: 700
)

midfielder9 = Player.create(
  name:        { en: 'Remy Cabella', ru: 'Реми Кабелла' },
  position:    :midfielder,
  team:        krasnodar_team,
  price_cents: 700
)

# forwards
forward1 = Player.create(
  name:        { en: 'Artyom Dzyuba', ru: 'Артём Дзюба' },
  position:    :forward,
  team:        zenit_team,
  price_cents: 1_000
)

Player.create(
  name:        { en: 'Sardar Azmoun', ru: 'Сердар Азмун' },
  position:    :forward,
  team:        zenit_team,
  price_cents: 1_000
)

forward3 = Player.create(
  name:        { en: 'Jordan Larsson', ru: 'Джордан Ларссон' },
  position:    :forward,
  team:        spartak_team,
  price_cents: 1_000
)

forward4 = Player.create(
  name:        { en: 'Fedor Chalov', ru: 'Фёдор Чалов' },
  position:    :forward,
  team:        cska_team,
  price_cents: 1_000
)

Player.create(
  name:        { en: 'Ezequiel Ponce', ru: 'Эсекель Понсе' },
  position:    :forward,
  team:        spartak_team,
  price_cents: 1_000
)

forward6 = Player.create(
  name:        { en: 'Christian Noboa', ru: 'Кристиан Нобоа' },
  position:    :forward,
  team:        sochi_team,
  price_cents: 1_000
)

forward7 = Player.create(
  name:        { en: 'Marcus Berg', ru: 'Маркус Берг' },
  position:    :forward,
  team:        krasnodar_team,
  price_cents: 1_000
)

Player.create(
  name:        { en: 'Alexander Sobolev', ru: 'Александр Соболев' },
  position:    :forward,
  team:        spartak_team,
  price_cents: 1_000
)

forward9 = Player.create(
  name:        { en: 'Fyodor Smolov', ru: 'Федор Смолов' },
  position:    :forward,
  team:        lokomotiv_team,
  price_cents: 1_000
)

# users
user1 = User.create(email: 'user1@gmail.com', password: '1234qwerQWER')
user2 = User.create(email: 'user2@gmail.com', password: '1234qwerQWER')

# user teams
user_team1 = Users::Team.create(user: user1, championship: championship, name: 'User1 United', bank_value_cents: 10_000)

Users::Teams::Player.create(users_team: user_team1, player: goalkeeper1)
Users::Teams::Player.create(users_team: user_team1, player: goalkeeper2)
Users::Teams::Player.create(users_team: user_team1, player: defender1)
Users::Teams::Player.create(users_team: user_team1, player: defender3)
Users::Teams::Player.create(users_team: user_team1, player: defender5)
Users::Teams::Player.create(users_team: user_team1, player: defender7)
Users::Teams::Player.create(users_team: user_team1, player: defender8)
Users::Teams::Player.create(users_team: user_team1, player: midfielder1)
Users::Teams::Player.create(users_team: user_team1, player: midfielder4)
Users::Teams::Player.create(users_team: user_team1, player: midfielder6)
Users::Teams::Player.create(users_team: user_team1, player: midfielder8)
Users::Teams::Player.create(users_team: user_team1, player: midfielder9)
Users::Teams::Player.create(users_team: user_team1, player: forward1)
Users::Teams::Player.create(users_team: user_team1, player: forward4)
Users::Teams::Player.create(users_team: user_team1, player: forward7)

user_team2 = Users::Team.create(user: user2, championship: championship, name: 'User2 United', bank_value_cents: 10_000)

Users::Teams::Player.create(users_team: user_team2, player: goalkeeper3)
Users::Teams::Player.create(users_team: user_team2, player: goalkeeper4)
Users::Teams::Player.create(users_team: user_team2, player: defender1)
Users::Teams::Player.create(users_team: user_team2, player: defender2)
Users::Teams::Player.create(users_team: user_team2, player: defender4)
Users::Teams::Player.create(users_team: user_team2, player: defender5)
Users::Teams::Player.create(users_team: user_team2, player: defender7)
Users::Teams::Player.create(users_team: user_team2, player: midfielder2)
Users::Teams::Player.create(users_team: user_team2, player: midfielder4)
Users::Teams::Player.create(users_team: user_team2, player: midfielder5)
Users::Teams::Player.create(users_team: user_team2, player: midfielder6)
Users::Teams::Player.create(users_team: user_team2, player: midfielder8)
Users::Teams::Player.create(users_team: user_team2, player: forward3)
Users::Teams::Player.create(users_team: user_team2, player: forward6)
Users::Teams::Player.create(users_team: user_team2, player: forward9)
