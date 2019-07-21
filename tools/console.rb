require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#some cults to work with
the_abyss = Cult.new("The Abyss", "Seattle", 1992, "We have cookies.")
hums = Cult.new("He Who Hums", "Seattle", 1980, "Hum your own tune.")
yarn = Cult.new("Fibercraft Club", "Portland", 2012, "You can never have enough yarn!")

#some followers to work with
neil = Follower.new("Neil Gaiman", 51, "It's better in the dark.")
terry = Follower.new("Terry Pratchett", 72, "It's not worth doing something unless someone, somewhere, would much rather you weren't doing it.")
dresden = Follower.new("Harry Dresden", 39, "Fight back.")

#some bloodoaths to work with
neil.join_cult(the_abyss)
terry.join_cult(the_abyss)
dresden.join_cult(the_abyss)
neil.join_cult(hums)
terry.join_cult(hums)
neil_yarn = BloodOath.new(yarn, neil)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
