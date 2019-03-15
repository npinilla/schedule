class Vehicle < ActiveRecord::Base
  scope :without_driver, lambda { where(driver_id: nil) }

  def can_run?(route)
    if self.capacity < route.load_sum
      return false
    end
    if self.load_type != route.load_type
      return false
    end
    return true
  end
end
