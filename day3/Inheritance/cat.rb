require "./animal.rb"

class Cat < Animal

  def eat
    "I love Fish"
    # super called a method with the same name in the parent class
    super
  end

end
