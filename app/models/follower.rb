class Follower

    attr_accessor :name, :age, :life_motto
    @@all = []

    def initialize(name, age, life_motto)
        @name = name 
        @age = age 
        @life_motto = life_motto
        

        @@all << self 
    end 

    #instance methods - test these with referencing the follower1.join_cult(cult, date)

    def join_cult(cult, date)
        Bloodoath.new(cult, self, date)
    end 

    def self.all
        @@all
    end 

    #class method - test these with Follower.of_a_certain_age(40)
    # f - is for each follower instances. 
    # >= is our greater than or = to
    # <= is our less than or = to
    def self.of_a_certain_age(var_age)
        @@all.select {|f| f.age >= var_age }
    end 

    #helper method to find my cults "for a specific follower instance"

    def my_cults
        Bloodoath.all.select {|bloodoath| bloodoath.follower == self}
    end 

    #bloodoath.cult.slogan - goes through our joining (bloodoath class) which has "cult" in it. 
    # at this point you can then get access to your "slogan". 
    ## >> bloodoath.
    def my_cults_slogan
        my_cults.collect {|bloodoath| bloodoath.cult.slogan}
    end 

    # breaking down this method #
    ## note the instance method. With this we are then going through our Bloodoath (joining)
    ## class that collects every instance of a blood oath created and then "map" every bloodoath. which holds a (follower)
    ## finally 
    def self.most_active
        list = Bloodoath.all.map{|bloodoath| bloodoath.follower.name} # -- makes an array 
        binding.pry
        list.max_by{|follower| list.count(follower)}
    end

    # def self.top_ten
    #     list = Bloodoath.all.map{|bloodoath| bloodoath.follower.name}
    #     list.group_by {|name| name}      
    #     binding.pry

        
    #     # top_ten_grouped = top_ten.group_by {|bloodoath| bloodoath}.values
    #     # Follower.top_ten
    #     #  returns an Array of followers; they are the ten most active follower
    # end 

    
end