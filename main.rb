require "pry"
require "colorize" 


def puts_git(cmd) 

  puts `git #{cmd} - h`
  # sleep(3) 
  # print `clear` 
end 

def menu 
  puts "MAIN MENU".colorize(:red) 
  puts "1: Enter git command".colorize(:blue)
  puts "2: Exit".colorize(:yellow)

  case gets.to_i 
    when 1 
      puts "Enter git command:".colorize(:green)
      puts_git(gets.strip)
      menu 
    when 2
      exit 
    else 
      puts "Invalid choice".colorize(:orange)
      menu 
    end 
end
# back ticks ` ` runs a command instead of just printing 
# i to insert esc to go back :wp w(save) q(quit)
menu 