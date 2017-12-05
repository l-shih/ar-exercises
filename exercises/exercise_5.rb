require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"



# Output the number of stores that are generating $1M or more in annual sales. 
# Hint: Chain together where and size (or count) Active Record methods.


puts "This company has a total annual revenue of #{Store.sum(:annual_revenue)}"
puts "Their average revenue per store is #{Store.average(:annual_revenue)}"
puts "There are #{Store.where("annual_revenue >= ?", 1000000).count} stores that have met or exceeded $1M in annual revenue"