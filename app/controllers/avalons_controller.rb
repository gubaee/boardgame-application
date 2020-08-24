class AvalonsController < ApplicationController
  def show

  end

  def show
    # def run(players_username:)
    input_from_web = 7
    role = Avalon::Role.new(7)
    @shuffled_list_of_roles = role.shuffled_list_of_roles

    # hard coded value of list of players
    @players_username = ["apple", "blueberry", "strawberry", "mango", "banana", "peach", "lemon"]
    # initialize empty hashmap
    @players_map = {}
    # give a role to each players
    for i in 0..players_username.length()
      players_map[players_username[i]] = shuffled_list_of_roles[i]
    end
  end

  def setup_game
    # ::Avalon::Avalonboard.run(list_online_users_array)
    # ::Avalon::Avalonboard.run
  end
end
