def search(fileName,resultFile)
  puts "Input age you want to search:"
  age = gets.to_i
  i = 0
  if File.exist?(fileName)
    while (i < stringCounter(fileName) and age != -1)
    file = File.open(resultFile, 'w')
    File.foreach(fileName) do |string|
      if string.include?(age.to_s) 
        file.puts(string)
        puts "Student found"
        i += 1
      end
    end
    puts "Input age you want to search:"
    age = gets.to_i
    end
    if File.zero?(file)
      puts "No student with this age"
    end
    file.close
  else puts "File not found"
  end
end

def stringCounter(fileName)
  list = []
  File.foreach(fileName) {|string| list.push(string)}
  
  return list.length
end

def outputAll(fileName)
  if File.exist?(fileName)
    File.foreach(fileName).with_index {|string, index| 
      puts "#{index}: #{string}"}
  else puts "File not found"
  end
end