#!/usr/local/bin/ruby -w

# get filename from arg from commandline
filename = ARGV[0]

file_str = ''

# read line-by-line
File.readlines(filename).each do |l|
  # l = current line
  # add l to final output string
  file_str += l
  # print l
  puts(l)
end

# write to output file
File.write(filename + '.out', file_str)
