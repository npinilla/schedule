class Driver < ActiveRecord::Base

  def drive_in?(route_cities)
    if self.cities == nil
      return true
    end
    array_cities = self.cities.split(', ')
    array_route_cities = route_cities.split(', ')
    array_route_cities.each do |city|
      if !array_cities.include?(city)
        return false
      end
    end
    return true
  end

  def has_time?(route)
    time_slots = UsedTimeSlot.where(driver_id: self.id)
    time_slots.each do |time_slot|
      if route.starts_at >= time_slot.start_time && route.starts_at < time_slot.end_time
        return false
      elsif route.ends_at > time_slot.start_time && route.ends_at <= time_slot.end_time
        return false
      end
    end
    return true
  end

  def has_car?
    return self.vehicle_id != nil
  end

  def update_available_time(route)
    UsedTimeSlot.create(driver_id: self.id, start_time: route.starts_at, end_time: route.ends_at)
  end

  def update_vehicle(vehicle_id)
    self.vehicle_id = vehicle_id
    self.save
  end

end
