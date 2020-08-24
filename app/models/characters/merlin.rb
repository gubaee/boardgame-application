module Characters
  class Merlin < Base
    def initialize
      @goodness = :good
    end

    def can_see
      Set[Morgana, Assassin, Minion]
    end
  end
end