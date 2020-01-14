class Lifter
  attr_reader :name, :lift_total

  @@all = [] 

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self 
  end
   
  def self.all 
    @@all 
    
  end 

  def lifter_memberships 
    Membership.all.select{|membership| membership.lifter == self}

  end 

  def gym_membership
    lifter_memberships.map{|lifter| lifter.gym}
  end 

  def self.average_lift 
    total_lifts = Membership.all.map{|membership| membership.lifter.lift_total}.sum 
    average_lift = total_lifts/@@all.length
    average_lift
  end 

  def total_cost
    Membership.all.select{|membership| membership.lifter == self }.map{|membership| membership.cost}.sum
  end 
  
  def sign_up(cost, gym)
    Membership.new(cost, gym, self)
  end



end
