
IO.foreach("mtinney.hashes") do |line|
  l = line.chomp
  md5_f = File.open("./md5", "a")
  sha256_f = File.open("./sha256", "a")
  sha512_f = File.open("./sha512", "a")
  argon2_f = File.open("./argon2", "a")
  pbkdf2_f = File.open("./pbkdf2", "a")
  des_f = File.open("./des", "a")
  
  if l.start_with?("$1")
    md5_f.puts(line)
  elsif l.start_with?("$5")
    sha256_f.puts(line)
  elsif l.start_with?("$6")
    sha512_f.puts(line)
  elsif l.start_with?("$argon2")
    argon2_f.puts(line)
  elsif l.start_with?("$pbkdf2")
    pbkdf2_f.puts(line)
  else
    des_f.puts(line)
  end
end

