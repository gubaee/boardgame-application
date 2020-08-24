module Boards
  class Base < ApplicationRecord
    self.abstract_class = true
    belongs_to :game
    has_many :quests
  end
end