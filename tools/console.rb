# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1 = Lifter.new("Lili", 400)
l2 = Lifter.new("Rikesh", 20)
l3 = Lifter.new("Dean", 150)
l4 = Lifter.new("Potter", 200)

g1 = Gym.new("Tooting")
g2 = Gym.new("PureGym")
g3 = Gym.new("Moorgate")
g4 = Gym.new("Falmouth")

m1 = Membership.new(25, l1, g2)
m2 = Membership.new(300, l4, g1)
m3 = Membership.new(10, l1, g3)
m4 = Membership.new(75, l2, g2)
m5 = Membership.new(130, l3, g4)
m6 = Membership.new(140, l4, g4)
m7 = Membership.new(5000, l4, g3)
m10 = Membership.new(25, l1, g4)

binding.pry

puts "Gains!"
