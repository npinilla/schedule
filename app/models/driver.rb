class Driver < ActiveRecord::Base

  def drive_in?(route_cities)
    if self.cities == nil
      return true
    end
    array_cities = self.cities.split(', ')
    array_route_cities = route_cities.split(', ')
    puts array_cities
    puts array_route_cities
    array_route_cities.each do |city|
      puts city
      if !array_cities.include?(city)
        return false
      end
    end
    return true
  end

  def has_car?
    return self.vehicle_id != nil
  end

  def update_available_time(route)
    self.next_available_time = route.ends_at
    self.save
  end

end
