def help 
puts "I accept the following commands: /n
- help : displays this help message /n
- list : displays a list of songs you can play /n
- play : lets you choose a song to play /n
- exit : exits this program"
end

def play(songs)
puts "Please enter a song name or number:"
input = gets.chomp 
songs.each do |playlist|
  if input.to_i.between?(1,songs.length)
    puts "Playing #{songs[input.to_i-1]}"
    return
    elsif playlist.include?(input)
    puts "Playing #{input}"
    return
  else puts "Invalid input, please try again."
end
end
end

def list(songs)
songs.each_with_index do |song,index|
puts "#{index+1}. #{song}"
  end
end

def exit_jukebox 
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command_input = gets.chomp
  if command_input === "exit"
    exit_jukebox
  elsif command_input === "list"
    list(songs)
    run(songs)
  elsif command_input === "play"
    play(songs)
    run(songs) 
  elsif command_input === "help"
    help
    run(songs)
  else
    puts "Invalid input, please try again"
    run(songs)
  end
end

