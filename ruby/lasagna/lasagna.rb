class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40
  MINUTES_PER_LAYER = 2

  def remaining_minutes_in_oven(_actual_minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN - _actual_minutes_in_oven
  end

  def preparation_time_in_minutes(_layers)
    _layers * MINUTES_PER_LAYER
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
  end
end
