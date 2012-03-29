class ComplexNumber
  attr_accessor :re, :im

  def initialize(re, im)
    # when ComplexNumber.new is called, initialize 
    # is run after the object is instantiated
    @re = re
    @im = im
  end

  def +(z)
    ComplexNumber.new @re + z.re, @im + z.im
  end

  def *(z)
    z = ComplexNumber.new(z, 0) unless z.is_a? ComplexNumber
    ComplexNumber.new @re*z.re - @im*z.im, @im*z.re + @re*z.im
  end

  def conjugate
    # complex conjugate
    ComplexNumber.new @re, -@im
  end

  def ^(n)
    nth_pow = ComplexNumber.new 1, 0
    raise StandardError unless n.is_a?(Integer) || n<0
    n.times do |i| 
      nth_pow = self*nth_pow
    end
    nth_pow
  end

  def /(z)
    z = ComplexNumber.new(z, 0) unless z.is_a? ComplexNumber
    coef = (z.im**2 + z.re**2)
    div_re = (@im*z.im + @re*z.re)/coef
    div_im = (-@re*z.im + @im*z.re)/coef
    ComplexNumber.new div_re, div_im
  end

  def to_s
    # the to_s function outputs a string automatically, for example:
    # suppose z is an object of type ComplexNumber, then   
    # puts z     will implicitly call z.to_s and then output the result
    output = ""
    if @im >= 0
      output = "#{@re} + #{@im}i"
    else
      output = "#{@re} - #{-1*@im}i"
    end 
    output # return the string
  end
end

