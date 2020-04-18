class Pirate

  @@pirates = []
  attr_accessor :name, :weight, :height

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@pirates << self
  end

  def self.all
    @@pirates
  end

  def self.clear
    @@pirates.clear
  end

end
