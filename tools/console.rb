# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

gym = Gym.new("FlatIron")
gym2 = Gym.new("Gold's Gym")


george = Lifter.new("George",120)
simon = Lifter.new("Simon",80)
sergio = Lifter.new("Sergio",220)
sam = Lifter.new("Sam",115)


m3 = Membership.new(30,sergio,gym)
m1 = Membership.new(50,george,gym)
m2 = Membership.new(55,simon,gym2)
m4 = Membership.new(60,sam,gym2)
m5 = Membership.new(60,george,gym2)







binding.pry

puts "Gains!"
