# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1 = Lifter.new("liftsalot", 100)
l2 = Lifter.new("liftsabit", 60)
l3 = Lifter.new("newbie", 20)

g1 = Gym.new("Regulars")
g2 = Gym.new("Social")
g3 = Gym.new("For The Pros")

m1 = Membership.new(g1, l3, 50)
m2 = Membership.new(g1, l2, 50)
m3 = Membership.new(g1, l1, 50)
m4 = Membership.new(g2, l2, 100)
m5 = Membership.new(g2, l1, 100)
m6 = Membership.new(g3, l1, 300)



binding.pry

puts "Gains!"
