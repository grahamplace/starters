#!/usr/local/bin/ruby -w

def str_function( s )
  o = 'Invalid Pattern'
  s.sub(' ', '')
  strs = s.split(',')
  a = strs[0].to_s.downcase.chars
  b = strs[1].to_s.downcase.chars
  a.delete(' ')
  b.delete(' ')
  a.delete(a.first)
  b.delete(b.first)
  b.delete("\n")
  a.sort
  b.sort
  puts 'a: ' + a.length.to_s + ' : ' + a.to_s
  puts 'b: ' + b.length.to_s + ' : ' + b.to_s

  o = 'Valid Pattern' if ((a - b).empty? && (a.length == b.length))
  return o
end


# get filename from arg from commandline
filename = ARGV[0]

file_str = ''

# read line-by-line
File.readlines(filename).each do |l|
  puts(l)
  file_str += str_function(l) + "\n"
end

# write to output file
File.write(filename + '.out', file_str)
