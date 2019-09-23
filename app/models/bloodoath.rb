class BloodOath
    attr_accessor :follower, :cult, :initiation_date
    @@all = []

    def initialize(follower, cult)
        @follower = follower
        @cult = cult
        @@all << self
        #use Time.now -> to_s -> split and to get the date
        @initiation_date = Time.now.to_s.split(" ")[0]
    end

    def self.all
        @@all
    end

    def self.first_oath
        #get the follower that made the first ever bloodoath
        #Time.now makes this weird
        current_time = Time.now.to_s.split(" ")[0]
        early_oath = {}
        self.all.each do |bloodoath|
           if bloodoath.initiation_date < current_time
            current_time = bloodoath.initiation_date
            early_oath = bloodoath.follower
           end
        end
    end
end