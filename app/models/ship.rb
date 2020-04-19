class Ship
  
  attr_accessor :name, :type, :booty
   
   @@all = [] 
   
  def initialize(details)
    @name = details[:name]
    @type = details[:type]
    @booty = details[:booty]
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.clear
    @@all = []
  end
  
  
end

