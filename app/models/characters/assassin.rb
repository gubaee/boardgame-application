module Characters
  class Assassin < Base
    def initialize
      @goodness :bad
    end

    def can_see
      Set[Mordred, Morgana, Assassin, Minion]
    end

  end
end