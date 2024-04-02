require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...


puts "Name the store you would like created:"
user_store_name = gets.chomp

user_store = Store.create(name: "#{user_store_name}")

if user_store.valid?
  user_store.save
else
puts user_store.errors.full_messages
end