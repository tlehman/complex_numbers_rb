require_relative 'complex_number'

describe ComplexNumber do
	describe 'arithmetic check' do
		before :each do
			@u = ComplexNumber.new (-1), (-1) # => -1 - 1i
			@v = ComplexNumber.new (2), (4)   # => 2 + 4i
		end
		it 'should add complex numbers componentwise' do
			w = @u + @v  # u.+(v)
			w.re.should == 1
			w.im.should == 3
		end

		it 'should multiply complex numbers correctly' do
			w = @u*@v
			w.re.should == 2
			w.im.should == -6
		end

		it 'should conjugate correctly' do
			w = @u.conjugate
			w.re.should == -1
			w.im.should == 1
		end

		it 'should be raiseable to the 3-rd power' do
			w = @u^3
			z = (@u*@u)*@u
			w.re.should == z.re
			w.im.should == z.im
		end

		it 'should be raiseable to the 0-th power' do
			w = @u^0
			w.re.should == 1
			w.im.should == 0
		end

		it 'should divide correctly' do
			w = @v/@u
			w.re.should == -3
			w.im.should == -1
		end

		it 'should raise a ZeroDivisionError when divided by 0+0i' do
			lambda { @v/0 }.should raise ZeroDivisionError
		end
	end
end
