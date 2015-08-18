
class Rectangle

  def initialize(width, height)
    @width = width.to_f
    @height = height.to_f
  end

  attr_accessor :width
  attr_accessor :height

    def area
      #@width * @height
      width * height
      
    end
end
