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
    self.memberships.map { |membership| membership.gym}
  end

  def self.average_lift_total
    total_number_of_lifters = @@all.map { |lifter| lifter.name }.count
    total_number_of_weight = @@all.map { |lifter| lifter.lift_total}.sum
    average = total_number_of_weight / total_number_of_lifters
    average
  end

  def lifters_total_membership_costs
    self.memberships.reduce(0){|total, membership| total + membership.cost}
  end

  def new_membership(cost, gym)
    Membership.new(cost, self, gym)
  end
  
end
