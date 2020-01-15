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

  def memberships_list
    Membership.all.select {|i| i.lifter == self}
  end

  def gym_by_lifter
    memberships_list.map {|i| i.gym}
  end

  def self.average_lift
    total = Lifter.all.map {|i| i.lift_total}
    average_lift = total.sum / total.count
    average_lift
  end

  def total_cost
    memberships_list.map {|i| i.cost}.sum
  end

  def new_gym(cost, gym)
    Membership.new(cost, self, gym)
  end
end
