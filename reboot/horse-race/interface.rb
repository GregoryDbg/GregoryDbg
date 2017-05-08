horses_names = []
horse = nil
def overtaking(horses_names)
  overtaker = rand(1...horses_names.size)
  overpassed = overtaker - 1
  horses_names[overtaker], horses_names[overpassed] = horses_names[overpassed], horses_names[overtaker]
  return {
    overtaker: horses_names[overpassed],
    overpassed: horses_names[overtaker]
  }
end

while horse != ""
  if horses_names.empty?
    puts "Hello, enter a horse name: "
    print " >"
  else
    puts "Please enter another horse name "
    print " >"
  end
  horse = gets.chomp
  break if horse == ""
  horses_names << horse
end

puts "Horses'names are the following :"
horses_names.each_with_index{ |horse, index| puts "#{index + 1} - #{horse}" }


puts "The race starts"
sleep(1)
horses_names.shuffle!
p horses_names

rand(4..8).times do
  sleep(2)
  overtake_infos = overtaking(horses_names)
  #je comprends pas pourquoi on doit le remettre dans une variable ici
  puts "#{overtake_infos[:overtaker]} a dépassé #{overtake_infos[:overpassed]}"
  p horses_names
end

puts "result is: "
horses_names.each_with_index{ |horse, index| puts "#{index + 1} - #{horse}" }







