require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult_one = Cult.new("Fun time cult", "Seattle", 666, "We are fun")
cult_two = Cult.new("This other cult", "NYC", 2212, "Other reigns")
cult_three = Cult.new("Yet another cult", "Jupiter", 1323, "Train is a good band")
cult_four = Cult.new("Test cult", "Astral Plane", 1323, "whoever said orange is the new pink was seriously disturbed")



follower_one = Follower.new("Betty", 23, "I like cults")
follower_two = Follower.new("Sam", 47, "Cults are cool")
follower_three = Follower.new("Jimmy", 98, "Culting since before you were born")

bloodoath_one = BloodOath.new(follower_one, cult_one, "2019-06-07")
bloodoath_two = BloodOath.new(follower_one, cult_three, "2019-06-08")
bloodoath_three = BloodOath.new(follower_two, cult_two, "2015-02-23")
bloodoath_four = BloodOath.new(follower_three, cult_two, "1940-01-01")

follower_one.cults
follower_one.join_cult(cult_two)
Follower.of_a_certain_age(45)

cult_one.recruit_follower(follower_two)
Cult.find_by_name("This other cult")
Cult.find_by_location("Jupiter")
Cult.find_by_founding_year(1323)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
