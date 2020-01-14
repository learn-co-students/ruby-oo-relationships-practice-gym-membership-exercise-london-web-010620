# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

gym1 = Gym.new("gym_A")
gym2 = Gym.new("gym_B")
gym3 = Gym.new("gym_C")

lifter1 = Lifter.new("lifter_AA", 500)
lifter2 = Lifter.new("lifter_BB", 600)
lifter3 = Lifter.new("lifter_CC", 700)

mem1 = Membership.new(20,gym1,lifter1)
mem2 = Membership.new(30,gym2,lifter2)
mem3 = Membership.new(40,gym3,lifter3)
mem4 = Membership.new(50,gym2,lifter1)




binding.pry

puts "Gains!"
