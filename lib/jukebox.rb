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
# Add your code here
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  output = 0

  if input.to_i <= songs.length && input.to_i != 0
    output = songs[input.to_i - 1]
  elsif songs.any?(input)
    output = input
  else
    output = "Invalid input, please try again"
  end
  puts "Playing #{output}"
end

def list(songs)
  songs.each_with_index do |item, index|
    puts "#{index + 1}. #{item}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

#----------

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp

  if command == "exit"
    exit_jukebox
  elsif command == "list"
    list(songs)
  elsif command == "play"
    play(songs)
  elsif command == 'help'
    run(songs)
  end

end
