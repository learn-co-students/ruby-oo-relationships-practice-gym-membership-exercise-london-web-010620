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

  def gym_members
    Membership.all.select {|i| i.gym == self}
  end

  def membership_by_lifter
    Membership.all.select {|membership| membership.gym == self}.map {|i| i.lifter.name}
  end

  def lift_total
    gym_members.map {|i| i.lifter.lift_total}.sum
  end

end
