s = ''
Route.all.each do |route|
  Driver.all.each do |driver|
    driver_found = false
    if route.can_assign?(driver)
      if driver.has_car?
        route.assign_driver_and_vehicle(driver.id, driver.vehicle_id)
        driver.update_available_time(route)
        break
      else
        Vehicle.without_driver.each do |vehicle|
          if vehicle.can_run?(route)
            route.assign_driver_and_vehicle(driver.id, vehicle.id)
            driver.next_available_time = route.ends_at
            driver.update_available_time(route)
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

puts "ID V\tID C\tID Ruta\t(Hora inicio - Hora fin)"
puts s
