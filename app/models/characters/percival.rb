module Characters
  class Percival < Base

    def initialize
      @goodness = :good
    end

    def can_see
      Set[Merlin, Morgana]
    end
    
  end
end