class LocomotiveEngineer
  def self.generate_list_of_wagons(*list)
    list
  end


  # Implement a method `fix_list_of_wagons()` that takes two **arrays** containing wagon IDs.
  # It should reposition the first two items of the first **array** to the end, and insert the values from the second **array** behind (_on the right hand side of_) the locomotive ID (**1**).
  # The method should then `return` an **array** with the modifications.
  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first, second, one, *rest = each_wagons_id
    [one, *missing_wagons, *rest, first, second]
  end

  def self.add_missing_stops(from_to, **missing)
    {**from_to, stops: missing.values}

  end

  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end
