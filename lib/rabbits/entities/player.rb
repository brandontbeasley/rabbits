module Rabbits
  class Player < Entity
    attr_accessor :id, :name, :meat_count
    def initialize(attrs)
      # @id = attrs[:id]
      @name = attrs[:name]
      @meat_count = 0
  end
end
