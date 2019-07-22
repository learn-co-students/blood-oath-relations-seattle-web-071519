class Cult
    attr_reader :name, :location, :founding_year, :slogan, :minimum_age
    @@all = []

    def initialize(name, location, founding_year, slogan, minimum_age)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @minimum_age = minimum_age
        @@all << self
    end


    #helper method to get bloodoaths attached to this cult instance
    def bloodoaths
        BloodOath.all.select do |bloodoath|
            bloodoath.cult == self
        end
    end


    def followers
        #get follower instances from the bloodoath class
        #use helper method bloodoaths
        self.bloodoaths.collect do |bloodoath|
            bloodoath.follower
        end
    end


    def recruit_follower(follower)
        if follower.age < @minimum_age
            puts "Sorry you must be at least #{self.minimum_age} to join #{self.name}."
        else
            new_bloodoath = BloodOath.new(follower, self)
        end
    end

    def cult_population
        self.followers.length
    end

    def self.all
        @@all
    end


    def self.find_by_name(cult_name)
        self.all.select do |cult|
            cult.name == cult_name
        end
    end

    def self.find_by_location(cult_location)
        self.all.select do |cult|
            cult.location == cult_location
        end
    end

    def self.find_by_founding_year(cult_founding_year)
        self.all.select do |cult|
            cult.founding_year == cult_founding_year
        end
    end

    ##advanced methods

    #rewrite using reduce method
    def average_age
        # age_sum = self.followers.collect do |follower|
        #     follower.age
        # end.sum
        # age_sum / (followers.length * 1.0)

        age_sum = self.followers.reduce do |sum, follower|
            sum + follower.age
        end
        age_sum / (followers.length * 1.0)
    end

    def my_followers_mottos
        self.followers.map do |follower|
            follower.life_motto 
        end
    end


    #rewrite using "min_by" method
    def self.least_popular
        # least_hash = Hash.new(0)
        # self.all.each do |cult|
        #     least_hash[cult] = cult.followers.length
        # end
        # least = least_hash.values.sort[0]
        # least_hash.key(least)

        self.all.min_by do |cult|
            cult.followers.length
        end
    end

    #could also write by getting hash of locations as helper method
    def self.most_common_location
        location_hash = Hash.new(0)
        self.all.each do |cult|
            location_hash[cult.location] += 1
        end
        sorted = location_hash.values.sort
        location_hash.key(sorted[-1])
    end
end