#to define a calss you use the 'class' keyword
# class names must start with a capital letter
class Cookie

  #This method
  def initialize(sugar_amount, flour_amount)
    @sugar_amount = sugar_amount
    @flour_amount = flour_amount
  end

  def bake
    "Bake the cookie"
  end
  def eat
    puts dip_in_milk
    "Eating the cookie"
  end
  #This is a puplic class method so you call like this Cookie.info not c.info
  def self.info
    "I'm a Cookie class"
  end

  private

  def dip_in_milk
    "Dipping the cookie in milk"
  end
end
