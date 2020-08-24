module Characters
  class Base < ApplicationRecord
    self.abstract_class = true
    belongs_to :player

    def can_see
      Set[]
    end
  end
end