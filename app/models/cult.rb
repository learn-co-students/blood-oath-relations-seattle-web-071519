class Cult
    # macros give access to to call methods with the following names between all classes

    attr_accessor :name, :location, :founding_year, :slogan
    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name 
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self 
    end 

    #def initialize(cult, follower, initiation_date)        
    #class methods 

    #this creates a new instance of a blood oath -
    # allowing a follower to join a cult 
    def recruit_follower(follower, date)
    #     #Time.now is a time stamp method for initiation date
        Bloodoath.new(self, follower, date)
        # binding.pry
    end 

    # << helper method >>
    # looking through all of the Bloodoath instance to find a 
    # a instance of blood oath that has a specific cult 
    def by_cult
        Bloodoath.all.select do |bloodoath| bloodoath.cult == self
    end 
    end 

    # plays off the previous one which selected a specfic cult and is now    
    # going to count them. << Based off the helper method >>
    def cult_population
        by_cult.count
    end 

    #Class Methods
    def self.all
        @@all
    end 
    #find_all / select gives an array 
    #find gives the first thing that matches 
    def self.find_by_name(var_name)
        @@all.find{|cult| cult.name == var_name}
    end

    def self.find_by_location(var_location)
        @@all.find_all{|cult| cult.location == var_location}
    end 

    def self.find_by_founding_year(var_year)
        @@all.find_all{|cult| cult.founding_year == var_year}
    end 

    #helper method - returns a list of all followers instances that belong to a certain cult 
    def my_followers
        Bloodoath.all.select {|bloodoath| bloodoath.cult == self}
    end 

    ## this plays off the helper meth. above and uses count (method) to find follower.age (in follower class)
    ## and divides total 
    def average_age
       total = my_followers.collect {|bloodoath| bloodoath.follower.age}.sum
       count = my_followers.count 
       total/count
    end 
    #Gets count of each cults followers
    def my_count
      count = my_followers.count
    end

    #uses the helper method from my_followers 
    def my_followers_motto
        my_followers.collect {|bloodoath| bloodoath.follower.life_motto}
    end 

    # this one uses joining class to collect all cult instances, which then grabs "name" 
    # from our cult - name. And then counts to see the least amt. 
    def self.least_popular
       least = Bloodoath.all.collect {|bloodoath| bloodoath.cult.name}
       least.min_by {|cult| least.count(cult)} 
    end

    #same idea, changing the "name" to location since thats what we are looking for
    
    def self.most_common_location
        all_locations = @@all.map{|cult| cult.location}
        all_locations.max_by {|location| all_locations.count(location)}
    end





end