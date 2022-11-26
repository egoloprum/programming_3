# frozen_string_literal: true

def generate_code
  o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
  "#{(0...20).map { o[rand(o.length)] }.join} "
end

def generate_str
  str = ''
  (1..rand(3..7)).each do
    str += generate_code
  end
  str
end

def create_f_file
  file = File.open('F.txt', 'w+')
  file.syswrite(generate_str)
  file.close
end

def create_g_file
  File.open('G.txt', 'w')
end

def transfer_data
  file_to_write = create_g_file
  write_data_to_file(file_to_write)
end

def write_data_to_file(file_to_write)
  file = File.open('F.txt', 'r')
  line = file.read.split(' ')
  line.each do |word|
    file_to_write.print "#{function_check(word)} "
  end

  file.close
end

def function_check(word)
  (0..word.length).each do |i|
    case word[i]
    when /[A-Z]/
      word[i] = word[i].downcase
    when /[a-z]/
      word[i] = word[i].upcase
    end
  end
  word
end
