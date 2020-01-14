# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l1 =Lifter.new('lifter1', 20)
l2 =Lifter.new('lifter2', 10)
l3 =Lifter.new('lifter3', 30)
l4 =Lifter.new('lifter4', 40)



g1 =Gym.new('gym1')
g2 =Gym.new('gym2')

m1 =Membership.new(10, l2, g1)
m2 =Membership.new(15, l4, g1)
m3 =Membership.new(5, l2, g2)
m4 =Membership.new(7, l3, g2)
m5 =Membership.new(20, l4, g2)

binding.pry

puts "Gains!"
