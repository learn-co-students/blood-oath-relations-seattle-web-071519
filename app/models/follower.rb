class Follower
    attr_reader :name, :age, :life_motto
    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
        #don't need the below line
        #@cults = []
    end

    #helper method to get bloodoaths this follower has made
    def bloodoaths
        BloodOath.all.select do |bloodoath|
            bloodoath.follower == self
        end
    end

    #use helper method bloodoaths to get cults this follower has joined
    def cults
        self.bloodoaths.collect do |bloodoath|
            bloodoath.cult
        end.uniq
    end

    def join_cult(cult)
        if self.age < cult.minimum_age
            puts "Sorry you must be at least #{cult.minimum_age} to join #{cult.name}."
        else 
            new_bloodoath = BloodOath.new(self, cult)
        end
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(certain_age)
        self.all.select do |follower|
            follower.age >= certain_age
        end
    end

    ##advanced methods

    def my_cults_slogans
        self.cults.map do |cult|
           cult.slogan
        end
    end

    #actually make a helper method for sorted list of
    #follower activity

    def self.follower_activity
        self.all.sort do |follower_a, follower_b|
            follower_a.cults.length <=> follower_b.cults.length
        end
    end

    def self.most_active
        # most_cults = 0
        # cultist = {}
        # self.all.each do |follower|
        #     if follower.cults.length > most_cults
        #         most_cults = follower.cults.length
        #         cultist = follower
        #     end
        # end
        # cultist

        #using spaceship operator instead!
        # sorted = self.all.sort do |follower_a, follower_b|
        #     follower_a.cults.length <=> follower_b.cults.length
        # end
        # sorted[-1]
        self.follower_activity[-1]
    end

    def self.top_ten
        #return an array of 10 most active followers
        #iterate over bloodoaths and using a count hash?
        # count_hash = Hash.new(0)
        # BloodOath.all.each do |bloodoath|
        #     cultist = bloodoath.follower
        #     if !count_hash[cultist]
        #         count_hash[cultist] = 1
        #     else
        #         count_hash[cultist] += 1
        #     end
        # end
        # first_10 = count_hash.values.sort.slice!(-1..-11)
        # count_hash.select do |cult_member, num_oaths|
        #     first_10.include?(num_oaths)
        # end
        # count_hash.keys

        self.follower_activity[-1..-11]
    end

    #bonus methods

    def fellow_cult_members
        #get a unique array of followers in the same cults as you
        #use uniq method at the end
        #call the self.cults method to get a list of my cults and
        #iterate through my cults and grab a list of followers for each cult
        my_cults = self.cults
        my_cults.collect do |cult|
            cult.followers
        end.uniq
    end

end