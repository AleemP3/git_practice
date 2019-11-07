def puts_git(cmd) 

  puts `git #{cmd} - h`
  # sleep(3) 
  # print `clear` 
end 

def menu 
  puts "1: Enter git command"
  puts "2: Exit"

  case gets.to_i 
    when 1 
      puts "Enter git command:" 
      puts_git(gets.strip)
      menu 
    when 2
      exit 
    else 
      puts "Invalid choice"
      menu 
    end 
end
# back ticks ` ` runs a command instead of just printing 
menu 