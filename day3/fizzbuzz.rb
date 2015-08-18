class FizzBuzz

  attr_accessor(:x, :z)

  def run(x, z)
    b = 1
    array = []

    #x = gets.to_i
    #z = gets.to_i
    while b < 101
      if b % x == 0 && b % z == 0
        puts "fizzbuzz"
      elsif b % x == 0
        puts "fizz"
      elsif b % z == 0
        puts "buzz"
      else
        puts b
      end
    b += 1
    end
    print array
  end
end

#By Ali
