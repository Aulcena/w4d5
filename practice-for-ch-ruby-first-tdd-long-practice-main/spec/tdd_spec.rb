require "rspec"
require "tdd"

describe Array do
  subject (:array) {Array.new}
  describe "#uniq" do
    it "should accept an array" do
      arr = [1, 2, 1, 3, 3]
      #epxect(arr).to be(Ara)
    end

    it "should return a distinct array" do
      array = [1, 2, 1, 3, 3]
      expect(array.uniq).to eq([1, 2, 3])
    end
  end
end
