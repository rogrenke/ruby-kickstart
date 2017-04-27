# This problem is based off of example 2
# Modify it so that it also tracks a person's age and a quote
# Allow any of these to be set with a hash as well, but the block should overwrite the hash
#
#
# EXAMPLE:
#
# artist = Person.new :name => 'Prince' do |person|
#   person.age   = 47
#   person.quote = "Why don't you purify yourself in the waters of Lake Minnetonka?"
# end
#
# artist.name   # => "Prince"
# artist.age    # => 47
#
# artist.name = 'The Artist Formarly Known As Prince'
# artist.age  = 1999
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 1999
#
# artist.reinit
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 47


class Person
  attr_accessor :name
  attr_accessor :age
  attr_accessor :quote

  def initialize(hash = Hash.new ,&initializer)
    @name = hash[:name] if hash[:name] != nil
    @age = hash[:age] if hash[:age] != nil
    @quote = hash[:quote] if hash[:quote] != nil
    @initializer = initializer
    initializer.call self if initializer != nil
  end

  def reinit
    @initializer.call self if @initializer != nil
  end
end
