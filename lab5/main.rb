def index(fileName)
  if File.exist?(fileName)
    File.foreach(fileName).with_index {|string, index| 
      puts "#{index}: #{string}"}
  else puts "File not found"
  end
end

def find(id, fileName)
  if File.exist?(fileName)
    File.foreach(fileName).with_index do |string, index|
      if index.eql? id 
        puts "Your string is #{string}" 
      end
    end
  else puts "File not found"
  end
end

def where(pattern, fileName)
  list = []
  if File.exist?(fileName)
    File.foreach(fileName) do |string|
      if string.include?(pattern)
        list.push(string)
      end
    end
    list.each.with_index { |val,index| 
      puts "Pattern: #{pattern} was found with index: #{index} for #{val}" }
  else puts "File not found"
  end
end

def update(fileName, new_file, id, str)
  if File.exist?(fileName)
    file = File.open(new_file, 'w')
    File.foreach(fileName).with_index do |string, index|
    file.puts(id == index ? str : string)
    end
    file.close
  File.write(fileName, File.read(new_file))
  File.delete(new_file) if File.exist?(new_file)
  else puts "File not found"
  end
end
  

def delete(fileName, id)
  if File.exist?(fileName)
    list = []
    File.foreach(fileName).with_index do |string, index|
      if index != id
        list.push(string)
      end
    end
    File.write(fileName, list.join())
  else puts "File not found"
  end
end

FILE_PATH = 'students.txt'
NEW_PATH = 'new_file.txt'
index(FILE_PATH)
find(2, FILE_PATH)
where("Вл", FILE_PATH)
update(FILE_PATH,NEW_PATH,4,"Владимир Соломакин 21")
delete(FILE_PATH, 3)
puts "List after removing id"
index(FILE_PATH)
