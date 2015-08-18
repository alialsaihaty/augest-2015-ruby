require "./animal.rb"

class Cat < Animal

  def initialize( name )
    super(name)
  end

  def catch(animal)
    puts "#{name} is catching #{animal.name}" if !animal.can_fly_away?
  end

  def eat(animal)
    puts "#{name} is eating #{animal.name}"
  end



end
