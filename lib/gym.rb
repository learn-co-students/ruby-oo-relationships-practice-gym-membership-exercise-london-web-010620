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

  def mems_for_this_gym
    Membership.all.select {|mem| mem.gym == self}
  end

  def names_of_mems
    mems_for_this_gym.map{|mem| mem.lifter.name}
  end

  def total_lifts_for_gym
    mems_for_this_gym.map {|mem| mem.lifter.lift_total}.sum
  end
end
