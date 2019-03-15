class Route < ActiveRecord::Base
  def can_assign?(driver)
    if driver.max_stops != nil && driver.max_stops < self.stops_amount
      return false
    end
    if driver.next_available_time >= self.starts_at
      return false
    end
    if driver.drive_in?(self.cities)
      return true
    end
    return false
  end

  def assign_driver_and_vehicle(driver_id, vehicle_id)
    self.driver_id = driver_id
    self.vehicle_id = vehicle_id
    self.save
  end

  def to_s
    if self.is_scheduled?
      "#{self.vehicle_id}\t#{self.driver_id}\t#{self.id}\t(#{self.starts_at} - #{self.ends_at})"
    else
      "No es posible\t#{self.id}\t(#{self.starts_at} - #{self.ends_at})"
    end
  end

  def is_scheduled?
    return self.driver_id != nil && self.vehicle_id != nil
  end

end
