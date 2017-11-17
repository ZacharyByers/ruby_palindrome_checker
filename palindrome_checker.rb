require 'pry'
require 'colorize'

def reversify(string)
  string_array = string.split('')
  string_array.delete(' ')
  string_array.delete(',')
  string_array.delete('.')
  string_array.delete('!')
  string_array.delete('?')
  string_array.delete("'")
  reversed_array = []
  string_array.each { |char| reversed_array.unshift(char) }
  reversed_string = reversed_array.join('')
  string = string_array.join('')
  string == reversed_string ? true : false
end


while true
  puts "Enter a phrase, and I'll tell you if it's a palindrome! (or 'q' to quit)".yellow
  string = gets.strip.downcase

  if string.downcase == 'q'
    puts "Toodle pip old bean!".cyan
    exit 0
  end

  if reversify(string)
    puts "Yeppers, that's a palindrome!".green
  else
    puts "Nope, that's a boring old regular phrase.".red
  end
end
