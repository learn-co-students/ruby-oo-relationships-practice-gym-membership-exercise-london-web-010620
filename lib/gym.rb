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

  def memberships
    Membership.all.select { |membership| membership.gym == self }
  end

  def lifters
    self.memberships.map { |membership| membership.lifter}
  end

  def self.lifters
    self.lifters.map { |lifter| lifter.name}
  end

  def lifter_total
    self.lifters.reduce(0){|total, lifter| total + lifter.lift_total}
  end

end
