Base64Converter
===============

This Base64Converter consists of encoder &amp; decoder. They are built with the standard library of Ruby Base64.

They are terminal tools thats take 2 command line argunments. The first one is the path of source file, the second one is the path of destination file

Base64Encoder
===============

1. Read the binary data from the source file
2. Output the encoded String to the destination file

Usage
--------------

	ruby base64_encoder.rb EncodeTestCase/SunShine.png EncodeTestCase/encodedSunShine.txt

Base64Decodeer
===============

1. Read the encoded String from the source file
2. Output the binary data to the the destination file  

Usage
--------------

	ruby base64_decoder.rb DecodeTestCase/encodeVictoria.txt DecodeTestCase/decodedVictoria.jpg