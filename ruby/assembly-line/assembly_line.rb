class AssemblyLine
  CAR_PER_HOUR = 221

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if 1 <= @speed && @speed <= 4
      rate = 1.0
    elsif 5 <= @speed && @speed <= 8
      rate = 0.9
    elsif @speed == 9
      rate = 0.8
    elsif @speed == 10
      rate = 0.77
    end
    CAR_PER_HOUR * rate * @speed
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
