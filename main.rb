s = ''
Route.order(load_sum: :desc).each do |route|
  driver_found = false
  Driver.where.not(vehicle_id: nil).each do |driver|
    if route.can_assign?(driver)
      vehicle = Vehicle.find driver.vehicle_id
      if vehicle.can_run?(route)
        route.assign_driver_and_vehicle(driver.id, vehicle.id)
        driver.update_available_time(route)
        driver_found = true
        break
      end
    end
  end
  if !driver_found
    Driver.where(vehicle_id: nil).each do |driver|
      if route.can_assign?(driver)
        Vehicle.without_driver.each do |vehicle|
          if vehicle.can_run?(route)
            route.assign_driver_and_vehicle(driver.id, vehicle.id)
            driver.update_available_time(route)
            driver.update_vehicle(vehicle.id)
            vehicle.update_driver(driver.id)
            driver_found = true
            break
          end
        end
        if driver_found
          break
        end
      end
    end
  end
  s += route.to_s + "\n"
end
puts "\n\n"
puts "ID V\tID C\tID Ruta\t(Hora inicio - Hora fin)"
puts s
puts "\n\n"
