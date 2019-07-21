class Follower
    attr_reader :name, :age
    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def join_cult(cult)
        cult.recruit_follower(self)
    end

    def cults
        BloodOath.all.select do |bloodoath|
            bloodoath.follower == self
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


end