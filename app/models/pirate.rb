class Pirate
  attr_accessor :name,:weight,:height 
  @@pirate=[]
  
   def initialize(params)
     
     @name=params[:name]
     @weight=[:weight]
     @height=[:height]
     @@pirate << self 
     
   end 
   
   def self.all
     @@pirate
   end 
  
end