f = File.open("./8chrWords.list", "w")
temp = File.open("./temp.list", "w")
temp2 = File.open("./temp2.list", "w")

IO.foreach("words.txt") do |line|
  l = line.chomp
  
  #unwanted = "."
  
  if l.length == 4 
    temp.puts(l)
    temp2.puts(l)
  end
end

IO.foreach("temp.list") do |line|
  IO.foreach("temp2.list") do |line2|
  	s = line.chomp + line2.chomp
    f.puts(s)
  end
end
