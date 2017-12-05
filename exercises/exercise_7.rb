require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
#require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

store = Store.create(name: gets.chomp)
store.save

@errors = store.errors.messages

@errors.each do |message|
  p message
end