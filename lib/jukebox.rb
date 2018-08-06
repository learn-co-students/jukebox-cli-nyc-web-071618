require 'pry'

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
  user_input = STDIN.gets.chomp
  if user_input == "help"
    puts %(
I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
    )
  end
end

def list(songs)
  songs.each_with_index{|song, index| puts "#{index+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = STDIN.gets.chomp
  pick = songs.select{|song| song == user_input || songs.index(song)+1 == user_input.to_i}
  if pick != []
    puts "Playing #{pick.join()}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

# binding.pry
# help
# list(songs)
# play(songs)
# exit_jukebox
