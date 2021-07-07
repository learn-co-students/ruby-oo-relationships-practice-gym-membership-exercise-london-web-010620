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

  def memberships
    Membership.all.select { |membership| membership.lifter == self }
  end

  def gyms
    self.memberships.map { |membership| membership.gym }
  end

  def self.average_lift_total
    lift_total = @@all.reduce(0) { |total, lifter| total + lifter.lift_total }
    lift_total / @@all.count
  end
    
  def total_cost
    self.memberships.reduce(0) { |total, membership| total + membership.cost  }
  end

  def new_membership(cost, gym)
    Membership.new(cost, self, gym)
  end

end
