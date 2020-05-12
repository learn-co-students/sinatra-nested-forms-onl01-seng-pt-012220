class Ship
    attr_accessor :name, :type, :booty

    @@all = []

    def initialize(attr)
        @name = attr[:name]
        @type = attr[:type]
        @booty = attr[:booty]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all = []
    end


end