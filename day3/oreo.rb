require "./cookie.rb"

class Oreo < Cookie
  attr_accessor :filling_type


  def bake

    puts "Baking the Oreo cookie"

    #super called a method with the same
    super
  end

  def filling_type
    @filling_type
  end
    ``
  def filling_type=(arg)
    @filling_type = arg
  end
end
