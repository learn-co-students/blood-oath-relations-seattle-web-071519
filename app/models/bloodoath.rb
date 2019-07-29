require 'pry'

class BloodOath 
 
    
    attr_accessor :cult, :follower, :initiation_date

    @@all = []

    def initialize(cult, follower, initiation_date)
        @follower = follower 
        @cult = cult 
        @initiation)date = initiation_date    #returns a string that is the initiation date for the blood oath 

        @@all << self  #returns an array of all the blood oaths 
    end 

    def self.all 
        @@all 
    end 
end 