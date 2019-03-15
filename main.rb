s = ''
Route.all.each do |route|
  Driver.all.each do |driver|
    driver_found = false
    puts driver.id
    if route.can_assign?(driver)
      puts "#{driver.id} paso"
      if driver.has_car?
        puts 'tiene auto'
        route.driver_id = driver.id
        route.vehicle_id = driver.vehicle_id
        route.save
        driver.next_available_time = route.ends_at
        driver.save
        break
      else
        Vehicle.all.each do |vehicle|
          puts vehicle.id
          if vehicle.can_run?(route)
            route.driver_id = driver.id
            route.vehicle_id = vehicle.id
            route.save
            driver.next_available_time = route.ends_at
            driver.save
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
