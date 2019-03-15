# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Driver.find_or_create_by(name: 'Juan', phone: '1', email: 'asd@asd.asd', vehicle_id: 1, max_stops: 5, next_available_time: Time.new(2019, 3, 15, 0))
Driver.find_or_create_by(name: 'Jose', phone: '1', email: 'asd@asd.asd', cities: 'Huechuraba, Las Condes', max_stops: 10, next_available_time: Time.new(2019, 3, 15, 0))
Driver.find_or_create_by(name: 'Nicolas', phone: '1', email: 'asd@asd.asd', max_stops: 2, next_available_time: Time.new(2019, 3, 15, 0))
Driver.find_or_create_by(name: 'Hola', phone: '1', email: 'asd@asd.asd', vehicle_id: 2, cities: 'Providencia, Vitacura, Nunoa', max_stops: 1, next_available_time: Time.new(2019, 3, 15, 0))
Driver.find_or_create_by(name: 'Chao', phone: '1', email: 'asd@asd.asd', vehicle_id: 3, max_stops: 5, next_available_time: Time.new(2019, 3, 15, 0))
Driver.find_or_create_by(name: 'Diego', phone: '1', email: 'asd@asd.asd', cities: 'Maipu, Cerrillos, Estacion Central', max_stops: 7, next_available_time: Time.new(2019, 3, 15, 0))
Driver.find_or_create_by(name: 'Pedro', phone: '1', email: 'asd@asd.asd', cities: 'La Cisterna, Lo Espejo, El Bosque', next_available_time: Time.new(2019, 3, 15, 0))
Driver.find_or_create_by(name: 'Valentina', phone: '1', email: 'asd@asd.asd', next_available_time: Time.new(2019, 3, 15, 0))

Vehicle.find_or_create_by(capacity: 20, load_type: 'General', driver_id: 1)
Vehicle.find_or_create_by(capacity: 25, load_type: 'Refrigerado', driver_id: 4)
Vehicle.find_or_create_by(capacity: 10, load_type: 'General', driver_id: 5)
Vehicle.find_or_create_by(capacity: 2, load_type: 'Refrigerado')
Vehicle.find_or_create_by(capacity: 100, load_type: 'Refrigerado')
Vehicle.find_or_create_by(capacity: 13, load_type: 'General')
Vehicle.find_or_create_by(capacity: 23, load_type: 'General')
Vehicle.find_or_create_by(capacity: 5, load_type: 'General')
Vehicle.find_or_create_by(capacity: 8, load_type: 'Refrigerado')
Vehicle.find_or_create_by(capacity: 18, load_type: 'General')

Route.find_or_create_by(starts_at: Time.new(2019, 3, 15, 12, 30), ends_at: Time.new(2019, 3, 15, 13, 40), load_type: 'General', load_sum: 10, cities: 'La Cisterna, Lo Espejo', stops_amount: 5)
Route.find_or_create_by(starts_at: Time.new(2019, 3, 15, 12, 30), ends_at: Time.new(2019, 3, 15, 13, 40), load_type: 'General', load_sum: 10, cities: 'La Cisterna, Lo Espejo', stops_amount: 5)
