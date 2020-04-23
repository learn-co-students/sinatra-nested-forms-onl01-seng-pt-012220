class Pirate
    attr_accessor :name, :weight, :height
    @@crew = []
    def initialize(params)
        @name = params[name]
        @weight = params[weight]
        @height = params[height]
        @@crew << self
    end

    def self.all
       @@crew
    end

end