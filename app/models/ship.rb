class Ship
    attr_accessor :name, :type, :booty

    @@fleet= []
    def initialize(params)
        @name = params[name]
        @type = params[type]
        @booty = params[booty]
        @@fleet << self
    end

    def self.all
        @@fleet
    end

    def self.clear
        @@fleet.clear
    end
    

end