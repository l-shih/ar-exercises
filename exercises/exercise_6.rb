require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Roe", last_name: "Virt", hourly_rate: 60)
@store1.employees.create(first_name: "Joe", last_name: "Dirt", hourly_rate: 90)
@store2.employees.create(first_name: "Moe", last_name: "Wirt", hourly_rate: 55)
@store2.employees.create(first_name: "Doe", last_name: "Zirt", hourly_rate: 25)
@store2.employees.create(first_name: "Soe", last_name: "Mirt", hourly_rate: 80)