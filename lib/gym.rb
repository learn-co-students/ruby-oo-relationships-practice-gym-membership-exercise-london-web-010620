class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all
    @@all 
    
  end 

  def gym_memberships 
    Membership.all.select{|membership| membership.gym == self}
  end 

  def gym_memberships
    

  end 






end
