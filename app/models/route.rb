class Route < ActiveRecord::Base
  def can_assign?(driver)
    if driver.max_stops != nil && driver.max_stops < self.stops_amount
      return false
    end
    if driver.next_available_time >= self.starts_at
      return false
    end
    if driver.drive_in?(self.cities)
      if driver.has_car?
        car = Vehicle.find driver.vehicle_id
        if car.can_run?(self)
          return true
        else
          return false
        end
      else
        return true
      end
    end
    return false
  end

  def assign_driver_and_vehicle(driver_id, vehicle_id)
    self.driver_id = driver_id
    self.vehicle_id = vehicle_id
    self.save
  end

  def to_s
    "#{self.vehicle_id}\t#{self.driver_id}\t#{self.id}\t(#{self.starts_at} - #{self.ends_at})"
  end

end
