require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

#this called method reffers to the Cult class which calls for four parameters to be executed when called.

cult_one = Cult.new("Drop Club", "Seattle", "Were the Drop Club" 2000)
cult_two = Cult.new("The Cult", "Oregon", "Were the Cult Club" 2005)
cult_three = Cult.new("Gold Coast", "California", "Were the Gold Coast Club" 2010)
cult_four = Cult.new("Other Coast", "New York", "Were the Other Coast Club" 2015)
binding.pry
#this called method reffers to the Follower class, the class itself shows that three arguments were to be passed through its parameters so therefore we must call three 

follower_one = Follower.new("Sue" 40, "Cults are fun")
follower_two = Follower.new("Beth", 35, "I like cults")
follower_three = Follower.new("Chris", 30, "Culting all day")
follower_four = Follower.new("John", 40, "Idk bout this cult")

binding.pry

#this called method reffers to what connects the Cult and Follower class. The BloodOath class is called with parameters 
#that invoke the two other classes to combone? both . 
bloodoath_times_one = BloodOath.new(cult_one, follower_one, "2019-04-06"  )
bloodoath_times_two = BloodOath.new(cult_two, follower_two, "2019-06-09" )
bloodoath_times_three = BloodOath.new(cult_three, follower_three, "2019-03-08" )
bloodoath_times_four = BloodOath.new(cult_four, follower_four, "2019-10-13" )
# bloodoath_times_five = BloodOath.new()

Cult.recruit_follower("Sue")
Follower.cults("The Cult")
BloodOath.all 

puts "Mwahahaha!" # just in case pry is buggy and exits
