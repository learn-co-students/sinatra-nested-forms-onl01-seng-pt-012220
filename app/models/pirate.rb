class Pirate

    attr_accessor :name, :weight, :height

    @@all = []

    def initialize(attr)
        @name = attr[:name]
        @weight = attr[:weight]
        @height = attr[:height]
        @@all << self
    end

    def self.all
        @@all
    end
end