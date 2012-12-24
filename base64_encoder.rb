# This is a Base64Encoder built with the standard library Base64 of ruby
# 
# It takes 2 command line argunments, 
# First one is the path of source file
# Second one is the path of destination file
#
# 1. Read the encoded String from the source file
# 2. Output the binary data to the the destination file  

require 'base64'


# user input
source_file_path = ARGV[0]
destination_file_path = ARGV[1]

# read the file
puts "Reading the source file...."
file = File.new(source_file_path)
bin = file.read

# encode the file's content
# remove line break
puts "\nEncoding..."
encoded_string = Base64.encode64(bin)
encoded_string = encoded_string.gsub(/\n/,'')

# output to file
puts "\nOutputing to destination file ..."
File.open(destination_file_path, "w") do |file|
  file.write(encoded_string)
end

puts "\nFinish convertion!!!"