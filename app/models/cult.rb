require 'pry'

Class Cult 

attr_reader :name, :location, :founding_year, :slogan

#follower is the only thing that is an attribute_accessor because the methods planned to invoke it will be 
#used in other classes. the follower can have many cults < > the cults will have many followers
attr_accessor :follower


@@all = []

def initialize(name, location, founding_year, slogan)
    @name = name   #returns a string of cult name
    @location = location  #returns a string of the city location for the cult 
    
    @founding_year = founding_year #returns a fixum of the founding yr. 
    @slogan = slogan  ##return the cult slogan in a string

    @follower = []  #take the arg of a follower, and adds them to cult list of followers - array
    @@all << self  #returns an array of all the cults
end 

#returns an array of all the cults
def self.all 
    @@all 
end 

# * takes in an argument of a `Follower` instance and adds them to this cult's list of followers

#recruit follower takes in an argument of Follower instance - (@follower - which will take in an arg of a Cult class and add the follower to the cult list of followers.)
##and adds them to the cults list of followers, which we established was the array initialized above
#with this @follower method we are shoveling the "follower" and adding them to the cults list of followers. 
def recruit_follower(follower)
    @follower << follower
end

# * returns a `Fixnum` that is the number of followers in this cult

# looking for the number of followers in a cult >> followers.lenghth
def cult_population
    @follower.lenghth
end

#* takes a `String` argument that is a name and 

def self.find_by_name(name)
    #uses self.all to search for a cult instance to then..
self.all.find do |cult|
#..return a `Cult` instance whose name matches that argument
cult.name == name
end 

def self.find_by_location(location)
    self.all.collect { |cult| cult.location == cult_loction }
end 
end 

def self.find_by_founding_year(founding_year)
    self.all.collect { |cult| cult.founding_year == founding_year }
end 
end 

end 
