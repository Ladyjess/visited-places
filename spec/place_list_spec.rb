require('rspec')
require('place_list')

describe(Places) do
  before() do
    Places.clear()
  end
  
  describe("#place_name") do
    it("gives the name of the visited place") do
      test_place = Places.new("Budapest")
      expect(test_place.place_name()).to(eq("Budapest"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Places.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds new place to an array of all places") do
      test_place = Places.new("London")
      test_place.save()
      expect(Places.all()).to(eq([test_place]))
    end
  end

  describe(".clear") do
    it("empties out the saved places") do
      Places.new("Doha").save()
      Places.clear()
      expect(Places.all()).to(eq([]))
    end
  end
end
