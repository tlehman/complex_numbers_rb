require_relative 'complex_number'

# example usage of ComplexNumber objects
w = ComplexNumber.new (-1), (-1)   # => -1 - 1i
z = ComplexNumber.new 3, 1         # => 3 + 1i
puts "w + z = #{w + z}"            # => 2 + 0i
puts "w * z = #{w * z}"            # => -2 - 4i
puts "the complex conjugate of #{w} is #{w.conjugate}"
puts "the product of a complex number and it's conjugate is always real:"
puts "\tw * w.conjugate = #{w*w.conjugate}"
puts "\tz * z.conjugate = #{z*z.conjugate}"
puts "\tz^0 = #{z^0}"
puts "\tz/w = #{z/w}"
