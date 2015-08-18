require "./animal.rb"

class Dog < Animal

  def bark
    "Woof"
  end
  def eat
    "bones are yummy"
    # super called a method with the same name in the parent class
    super
  end

end
