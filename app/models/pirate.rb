require 'pry'
class Pirate
    attr_accessor :name, :weight, :height
    @@all = []

    def initialize(params)
        @name = params[:name]
        @weight = params[:weight]
        @height = params[:height]
        @@all << self
    end
#binding.pry
    def self.all
        @@all
    end
end