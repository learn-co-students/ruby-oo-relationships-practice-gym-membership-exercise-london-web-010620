# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
g1 = Gym.new("Adam")
g2 = Gym.new("Eve")
g3 = Gym.new("John")

l1 = Lifter.new("Bob", 200)
l2 = Lifter.new("Cam", 300)
l3 = Lifter.new("David", 500)

m1 = Membership.new(50, g1, l1)
m2 = Membership.new(70, g2, l2)
m3 = Membership.new(55, g3, l3)
binding.pry

puts "Gains!"
