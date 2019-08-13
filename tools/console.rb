require_relative '../config/environment.rb'
require 'pry'



# Cult - initialize(name, location, founding_year, slogan)
cult1 = Cult.new("CultA", "Seattle", 1985, "A")
cult2 = Cult.new("CultB", "California", 1985, "BB")
cult3 = Cult.new("CultC", "New York", 1969, "CCC")
cult4 = Cult.new("CultD", "New York", 1972, "ddd")

#Follower - initialize(name, age, life_motto, cult)
follower1 = Follower.new("Marisa", 23, "Help Me")
follower2 = Follower.new("Bob", 40, "I like cults")
follower3 = Follower.new("Stan", 25, "Keep Culting")
follower4 = Follower.new("Asif", 40, "I need another drink")


# # BloodOath - initialize(cult, follower, initiation_date)
bloodoath1 = Bloodoath.new(cult1, follower1, "2001")
bloodoath2 = Bloodoath.new(cult1, follower2, "2009")
bloodoath3 = Bloodoath.new(cult1, follower3, "2010")
bloodoath4 = Bloodoath.new(cult2, follower4, "2011")
bloodoath5 = Bloodoath.new(cult2, follower3, "2011")
bloodoath6 = Bloodoath.new(cult2, follower2, "2001")
bloodoath7 = Bloodoath.new(cult3, follower1, "2009")
bloodoath8 = Bloodoath.new(cult3, follower2, "2010")
bloodoath9 = Bloodoath.new(cult4, follower1, "2011")
bloodoat  h10 = Bloodoath.new(cult4, follower2, "2011")

#dot notation called a method within follower class
Follower.most_active

#Called Methods for Cult
# <<Instance Methods>>
Cult.all[0].average_age
Cult.all.first.my_followers_motto
Cult.all.first.my_count

# <<Class Methods>>
Cult.least_popular
Cult.most_common_location


# cult1.recruit_follower(follower1, "8131")


#gives access to everything above. all classes and methods 
binding.pry
0




