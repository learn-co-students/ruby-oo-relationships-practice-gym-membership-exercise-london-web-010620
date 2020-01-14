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

  def memberships_for_lifter
    Membership.all.select {|mem| mem.lifter == self}
  end

  def gyms_for_lifter
    memberships_for_lifter.select {|mem| mem.gym.name}
    
  end

  def self.average_lift_for_all
    total_lifts = Lifter.all.map {|lifter| lifter.lift_total}.sum
    total_lifts / @@all.length
  end

  def lifter_total_mem_cost
    memberships_for_lifter.map {|mem| mem.cost}.sum
  end

  def new_mem(gym,mem_cost)
    Membership.new(gym,mem_cost,self)
  end

  



end
