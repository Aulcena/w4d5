require "rspec"
require "tdd"

describe Array do
  let(:array) {Array.new}

  describe "#uniq" do

    it "checks if my_uniq exists" do
      expect(array).to respond_to(:my_uniq)
    end

    it "should return a distinct array" do
      array = [1, 2, 1, 3, 3]
      array.my_uniq
      expect(array.my_uniq).to eq([1, 2, 3])
    end

    it "should not mutate the array" do 
        array = [1, 2, 1, 3, 3]
        arr_id = array.object_id
        array.my_uniq
        expect(arr_id).to eq(array.object_id)
    end
  end
end
