require 'array'

describe Array do
	context 'Jenny_inject should' do
		
		it 'add 1, 2, 3, 4, 5' do
			expect([1, 2, 3, 4, 5].Jenny_inject{|memo, element| memo + element}).to eq(15)
		end

		it 'subtract 1, 2, 3, 4, 5' do
			expect([1, 2, 3, 4, 5].Jenny_inject{|memo, element| memo - element}).to eq(-13)
		end

		it 'divides 10000, 10, 5, 10' do
			expect([10000, 10, 5, 10].Jenny_inject{|memo, element| memo / element}).to eq(20)
		end

		it 'multiplies 1, 2, 3, 4, 5' do
			expect([1, 2, 3, 4, 5].Jenny_inject{|memo, element| memo * element}).to eq(120)
		end

		it 'take an initial value' do
			expect([1, 2, 3, 4, 5].Jenny_inject(4){|memo, element| memo * element}).to eq(480)
		end

		it 'concatenate stringz' do
			expect(["can ", "i ", "has ", "sticker ", "please", "?"].Jenny_inject{|memo, element| memo << element}).to eq("can i has sticker please?")
		end
	end
end