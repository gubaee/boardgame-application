class Game < ApplicationRecord
  # Contains many players
  # 5 >= people <= 10 players in a game
  has_many :players
  has_one :board

end
