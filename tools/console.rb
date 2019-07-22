require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult_one = Cult.new("Fun time cult", "Seattle", 666, "We are fun", 21)
cult_two = Cult.new("This other cult", "NYC", 2212, "Other reigns", 24)
cult_three = Cult.new("Yet another cult", "Jupiter", 1323, "Train is a good band",96)
cult_four = Cult.new("Test cult", "Astral Plane", 1323, "whoever said orange is the new pink was seriously disturbed", 18)
cult_five = Cult.new("cult", "Astral Plane", 1323, "...", 2000)



follower_one = Follower.new("Betty", 23, "I like cults")
follower_two = Follower.new("Sam", 47, "Cults are cool")
follower_three = Follower.new("Jimmy", 98, "Culting since before you were born")
follower_four = Follower.new("Joe", 93, "a")
follower_five = Follower.new("Patty", 54, "b")
follower_six = Follower.new("Jane", 34, "c")
follower_seven = Follower.new("Dave", 66, "d")
follower_eight = Follower.new("Doda", 33, "e")
follower_nine = Follower.new("Bob", 77, "f")
follower_ten = Follower.new("Allison", 98, "g")
follower_eleven = Follower.new("asdf", 98, "h")
follower_twelve = Follower.new("Blah", 98, "i")


bloodoath_one = BloodOath.new(follower_one, cult_one)
bloodoath_two = BloodOath.new(follower_one, cult_three)
bloodoath_three = BloodOath.new(follower_two, cult_two)
bloodoath_four = BloodOath.new(follower_three, cult_two)
bloodoath_five = BloodOath.new(follower_four, cult_two)
bloodoath_six = BloodOath.new(follower_five, cult_two)
bloodoath_seven = BloodOath.new(follower_six, cult_two)
bloodoath_eight= BloodOath.new(follower_six, cult_one)
bloodoath_nine = BloodOath.new(follower_seven, cult_two)
bloodoath_ten = BloodOath.new(follower_seven, cult_one)
bloodoath_eleven = BloodOath.new(follower_eight, cult_two)
bloodoath_twelve = BloodOath.new(follower_eight, cult_one)
bloodoath_thirteen = BloodOath.new(follower_nine, cult_one)
bloodoath_fourteen = BloodOath.new(follower_nine, cult_two)
bloodoath_fifteen = BloodOath.new(follower_ten, cult_one)
bloodoath_sixteen = BloodOath.new(follower_ten, cult_two)




# follower_one.cults
# follower_one.join_cult(cult_two)
# Follower.of_a_certain_age(45)

# cult_one.recruit_follower(follower_two)
# Cult.find_by_name("This other cult")
# Cult.find_by_location("Jupiter")
# Cult.find_by_founding_year(1323)
# Cult.most_common_location


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
