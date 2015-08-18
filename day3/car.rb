class Car

  def initialize(model, type, capacity)
  @model = model
  @type = type
  @capacity = capacity
end

  def drive
    puts ignite
    @speed = 150
    "Please start driving.."
  end
  def stop
    "Please stop the car #{@speed}"
  end
  def park
    "Please pull over.."
  end
  def max_speed
    200
  end

  private

  def ignite
    "Ignite your engine please.."
  end
end
