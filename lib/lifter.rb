class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  #Get a list of all the memberships that a specific lifter has
  def lifter_memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  #a list of the gyms that a specific lifter has memberships to
  def gyms
    lifter_memberships.map {|membership| membership.gym }
  end

  #Get the average lift total of all lifters
  def self.lift_average
    lifters = self.all.length
    lift_total = self.all.map {|lifter| lifter.lift_total}.sum

    lift_total / lifters
  end

  #Get the total cost of a specific lifter's gym memberships
  def total_cost
    lifter_memberships.map {|membership| membership.cost}.sum
  end

  #sign a specific lifter up for a new gym
  def gym_sign_up(gym, membership_cost)
    Membership.new(gym, self, membership_cost)
  end

  def self.all
    @@all
  end
end
