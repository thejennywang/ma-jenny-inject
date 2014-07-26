class Array

	def Jenny_inject(initial_arg=nil)
		initial_arg == nil ? memo = self.shift : memo = initial_arg
		self.each{ |element|
			memo = yield(memo, element)
		}
		memo
	end

end