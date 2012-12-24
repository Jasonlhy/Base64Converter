# This is a Base64Decodeer built with the standard library Base64 of ruby
# 
# It takes 2 command line argunments, 
# First one is the path of source file
# Second one is the path of destination file
#
# 1. Read the binary data from the source file
# 2. Output the encoded String to the destination file 

require 'base64'

# user input
source_file_path = ARGV[0]
destination_file_path = ARGV[1]

# read the file
puts "Reading the source file...."
file = File.new(source_file_path)
encoded_string = file.read

# encode the file's content
# remove line break
puts "\nDecoding..."
bin = Base64.decode64(encoded_string)

# output to file
puts "\nOutputing to destination file ..."
File.open(destination_file_path, "wb") do |file|
  file.write(bin)
end

puts "\nFinish decoding!!!"