# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("Harry", 50)
l2 = Lifter.new("Frank", 75)
l3 = Lifter.new("Sarah", 40)

g1 = Gym.new("Nuffield")
g2 = Gym.new("Better")
g3 = Gym.new("Greens")

m1 = Membership.new(25, l1, g2)
m2 = Membership.new(30, l2, g1)
m3 = Membership.new(50, l3, g3)
m4 = Membership.new(27, l1, g3)
m5 = Membership.new(15, l2, g1)
m6 = Membership.new(60, l3, g2)


binding.pry

puts "Gains!"
