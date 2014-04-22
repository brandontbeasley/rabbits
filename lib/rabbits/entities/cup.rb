module Rabbits
  class Cup
    attr_accessor :die
      def initialize
        @die = ["green", "green", "green", "green", "green", "green", "yellow",  "yellow",  "yellow",  "yellow", "red", "red", "red",].shuffle
      end
  end
end
