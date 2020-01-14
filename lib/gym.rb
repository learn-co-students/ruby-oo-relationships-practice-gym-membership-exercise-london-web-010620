class Gym
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def list_all_memberships
    Membership.all.select{|membership|membership.gym == self}
  end
  def list_all_lifters
    list_all_memberships.map{|membership|membership.lifter}
  end
  def list_names
    list_all_lifters.map{|lifter|lifter.name}
  end
  def lift_total
    list_all_lifters.reduce(0){|total,curr|total + curr.lift_total}
  end
end
