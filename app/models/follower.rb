require 'pry'

class Follower 

    attr_reader :name, :age
   
    @@all = []

    def initialize(name, age, life__motto)
        @name = name     #returns a string of followers name
        @age = age       #returns a Fixum of the age of the follower
        @life__motto = life__motto      #return a string that is the followers life moto
    
        @@all << self    #returns an array of all its followers 
    end 

    def self.all
        @@all
    end 
    # * returns an `Array` of this follower's cults

    # followers is connected to cults via BloodOath -
    def cults
       BloodOath.collect.all { |bloodoath| bloodoath.follower == self }
    end 
end 

# * takes in an argument of a `Cult` instance and adds this follower to the cult's list of followers
def join_cult(cult)
    Cult.recruit_follower(self)
end 

# * takes a `Fixnum` argument that is an age 
# and returns an `Array` of followers 
## who are the given age or older - is shown with the >= age

def self.of_a_certain_age(age)
    self.all.collect { |follower| follower.age >= age}
end 

    
end 