class Player < ApplicationRecord
  belongs_to :game
  has_one :character
  has_many :questinfo


end
