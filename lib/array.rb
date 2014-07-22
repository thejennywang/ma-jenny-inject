class Array

	def Jenny_inject(initial_arg=nil)
		if initial_arg == nil
			memo = self.shift
		else
			memo = initial_arg
		end
		self.each{ |element|
			memo = yield(memo, element)
		}
		memo
	end

end