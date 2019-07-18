require relative "../lib/MairieChristmas"


describe "test if we can see Sarcelles in the list" do
	it "should return true" do
		expect(perform?("SARCELLES - 95200"))to be true
	end



describe "test if the list contain all cities of 95" do
  it "should return 185" do
    expect(perform.count.to eq(185)
  end



#   it "test multiple of 3 or 5 of the interval between 0 and the given number" do
#     expect(is_multiple_of_3_or_5?.to eq(true)
#   end

#   it "test multiple of 3 or 5 of the interval between 0 and the given number" do
#     expect(is_multiple_of_3_or_5?(4)).to eq(false)
#   end

#     it "test multiple of 3 or 5 of the interval between 0 and the given number" do
#     expect(is_multiple_of_3_or_5?(15)).to eq(true)
#   end

# end