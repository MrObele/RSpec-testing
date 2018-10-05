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
end
