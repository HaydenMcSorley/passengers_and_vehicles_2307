require './lib/passenger'

RSpec.describe Passenger do
  before(:each) do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

    it "exists and has attributes" do
			
			expect(@charlie.name).to_eq("Charlie")
			expect(@taylor.name).to_eq("Taylor")

			expect(@charlie.age).to_eq(18)
			expect(@taylor.age).to_eq(12)

			expect(@charlie.adult).to_be(true)
			expect(@taylor.adult).to_be(false)
		end

		it "#driver" do
			expect(@charlie.driver?).to_eq(false)
		end
		
		it "#drive" do
			@charlie.drive
			expect(@charlie.driver?).to_eq(true)
		end
end