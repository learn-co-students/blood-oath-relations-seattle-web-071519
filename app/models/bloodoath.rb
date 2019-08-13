class Bloodoath

    attr_accessor :cult, :follower, :initiation_date
    @@all = []

    def initialize(cult, follower, initiation_date)
        @cult = cult 
        @follower = follower
        @initiation_date = initiation_date
        @@all << self 
    end 

    def self.all
        @@all
    end 

    #* returns a `String` that is the initiation 
    # date of this blood oath in the format _YYYY-MM-DD_. - 
    ## -- already a method from our attr_accessor @initiation_date, but to make a string 
    
end 