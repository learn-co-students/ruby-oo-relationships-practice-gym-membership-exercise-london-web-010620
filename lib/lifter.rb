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
  def list_all_memberships
    Membership.all.select{|membership|membership.lifter == self}
  end
  def list_all_gyms
    list_all_memberships.map{|lifter|lifter.gym}
  end

  def self.average_lift_all_users
    all_weight = self.all.reduce(0){|total,current|total + current.lift_total}

    all_weight/ self.all.size
  end
  def total_cost
    self.list_all_memberships.map{|membership|membership.cost}.sum
  end
  def sign_up(cost,gym)
    Membership.new(cost,self,gym)
  end

end
