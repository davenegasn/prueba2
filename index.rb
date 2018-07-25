prompt = "> "
puts "5 opciones"
print prompt
puts "1 "
puts "2 "
puts "3 "
puts "4 "
print prompt

while user_input = gets.chomp # loop while getting user input
  case user_input
  when "1"
    puts "First response"
    break # make sure to break so you don't ask again
  when "2"
    puts "Second response"
    break # and again
  when "6"
    puts "Bye.."
    break
  else
    puts "Please select either 1 or 2"
    print prompt # print the prompt, so the user knows to re-enter input
  end
end


