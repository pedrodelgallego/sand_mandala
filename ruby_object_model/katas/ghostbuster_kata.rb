
# Ruby can dynamically add  methods to existing classes. 
# It is a very powerful tool and can be used to create 
# seemingly "magic" results. 
#
# Let's look to the next example. 

class Person; end

spaniard = Person.new

def spaniard.speak
  puts "Hola"
end

spaniard.speak # => hola

# This methods that are create on the should be stored 
# somewhere. 

spaniard.methods.index 'speak' 
Person.instance_methods(false) # => []

# But we know that a instance of an object  dont
# store the methods itself that delegate that in to a class

spaniard.instance_methods # => undefined method `instance_methods

# References 
#
# Ruby Idioms : Adding instance methods (Pedro Del Gallego)
#   http://theplana.wordpress.com/2007/09/17/ruby-idioms-add-a-method-to-a-concrete-instance/
# 
# Ruby Metaprogramming screencast (Pragmatic Programmers)
#  http://pragprog.com/screencasts/v-dtrubyom/the-ruby-object-model-and-metaprogramming
