Complex Number object in Ruby
=============================

I know that there is already a Complex object baked into ruby's standard 
library, but the point here is to learn and apply test-driven development.

Writing tests before any actual code has been written is a new idea to me, 
actually, my first response to it was a mix of confusion and anger, but 
after more reading, watching screencasts, writing tests for existing code, 
and finally using testing to drive the development of new features, I am 
starting to appreciate the methodology.

This is just the beginning, but so far I have used TDD to drive the 
development of 

* raising a ComplexNumber to a power (n >= 0)
* dividing a ComplexNumber by another (nonzero) ComplexNumber

Also, using TDD, I was able to modify the exponentiation and division methods 
to allow for cases when the argument was zero. I noticed that starting with 
the tests kept me more focused on the desired behavior, and the red/green 
coloring was a good visual reminder of what it was I was working on.

