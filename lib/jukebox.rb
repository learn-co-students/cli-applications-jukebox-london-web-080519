# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help


puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"

end

def list(songs)

length = songs.length
track_counter = 0

while track_counter < length

songs.each_with_index do |item, index|

track_no = (index += 1)

puts "#{index}. #{item}"

track_counter += 1

end
end

end

def play(songs)

#puts "Please enter a song name or number:"

track_counter = 0
playing = false
input = gets.chomp

songs.each_with_index do |item, index|

track_no = (index += 1)
track_no_a = "#{track_no}"

if input == track_no_a or input == item
puts "Playing #{item}"
playing = true

end

end

if playing == false
      puts "Invalid input, please try again"
end


end


def exit_jukebox

  puts "Goodbye"

end

def run(songs)

help

puts "Please enter a command:"

input = nil

#input = gets.chomp
while input != "exit"
  input = gets.chomp
if input == "list"
  list(songs)
  input = nil
elsif input == "help"
  help
  input = nil
elsif input == "play"
  play(songs)
  input = nil
end
end
exit_jukebox
exit

end
