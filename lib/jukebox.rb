require "pry"
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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list (songs)
  
  songs.each_with_index do | song, index|
    
    puts "#{index + 1}. #{song}"
  end
    
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp 
  result = ""
  songs.each_with_index do | song, index|
    if input == song || input.to_i == index + 1
      result = "Playing #{song}"
    else 
      result = "Invalid input, please try again"
    end 
     
   puts result
  end 
end 

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help 
  i = 0 
  while i == 0 
  puts "Please enter a command:"
  input = gets.strip
  case input
    when 'exit'
      exit_jukebox
      break
    when 'help'
      help
    when 'play'
      play(songs)
    when 'list'
      list(songs)
    end 
  end
    
  
  
end 
  