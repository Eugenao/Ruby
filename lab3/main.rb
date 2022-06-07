require 'json'

def str_replace (str)
  
    if str[str.length-2, str.length-1] == "CS"
      puts 2 ** str.length
    else puts str.reverse
      
    end
  end
  
  def pokemonList ()
    arr = []
    puts "Number of pokemon"
    i = gets.to_i
    
    if i > 0
      until i == 0
        puts "Input name:"
        name = gets.chomp
        puts "Input color:"
        color = gets.chomp
        arr.push({name: name, color: color})
        i -= 1
      end
    else puts "Wrong number"
    end
    puts arr.to_json
    arr.each {|hash| puts hash}
  end
  
  puts "Input your data"
  str = gets.chomp
  str_replace(str)
  pokemonList()