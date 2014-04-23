require_relative 'rabbits/entities/cup.rb'
require_relative 'rabbits/entities/game.rb'
require_relative 'rabbits/entities/player.rb'
require_relative 'rabbits/entities/turn.rb'

require_relative 'database/in_memory.rb'

module Rabbits
  def self.db
    @__db__ ||= Rabbits::Database::InMemory.new
  end
end
