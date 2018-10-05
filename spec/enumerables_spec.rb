require './enumerables/enumerables'

RSpec.describe Enumerable do
  describe "#my_each" do
    it "returns all the elements of the given array" do
        expect([1,3,5].my_each{|x| x}).to eql([1,3,5])
    end
  end

  describe "#my_each_with_index" do
    it "returns all the elements of the given array" do
        expect([1,3,5].my_each_with_index{|x, i| x}).to eql([1,3,5])
    end
  end

  describe "#my_select" do
    it "returns an array of items that passed a given test in a block/proc/lambda" do
        expect([1, 3, 4, 5, 6, 8, 10].my_select{|x| x%2 == 0}).to eql([4, 6, 8, 10])
    end

    it "returns an array of items that passed a given test in a block/proc/lambda" do
      expect([1, 3, 4, 5, 6, 8, 10].my_select{|x| x%2 == 1}).to eql([1, 3, 5])
    end
  end

  describe "#my_all?" do
    it "returns true or false is all the elements of the array passes a given test" do
      expect([4, 6, 8, 10].my_all?{|x| x%2 == 0}).to eql(true)
    end

    it "returns true or false is all the elements of the array passes a given test" do
      expect(['abc', 'uzor', 'david', 'shola'].my_all?{|x| x.class == String}).to eql(true)
    end

    it "when no block is passed, will return true if nil and false are not part of the array" do
      expect(['abc', 'uzor', 'david', nil].my_all?).to eql(false)
    end
  end

  describe "#my_any?" do
     it "returns true if any of the elements of the array passes the given test else returns false" do
      expect([1, 3, 11, 5, 7, 9, 10].my_any?{|x| x%2 == 0}).to eql(true)
     end

     it "when no block is passed, will return true if at least one element of the array is not nil and false" do
      expect([false, nil, nil, false, 10].my_any?).to eql(true)
     end
  end
end
