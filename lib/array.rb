class Array

	def Jenny_inject(initial_arg=nil)
		if initial_arg == nil
 			memo = self.first
 		else
 			memo = initial_arg
 		end
		self[1..-1].each do |element|
			memo = yield(memo, element)
		end
		memo
	end
end

