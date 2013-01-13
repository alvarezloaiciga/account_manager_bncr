require 'debit'
require 'date'

describe Debit do
  context ".new" do
    it "assigns ammount" do
      move = {debit:1234.12, description: 'This is a description', date: "2012/12/26" }
      debit = Debit.new(move)
      debit.ammount.should == move[:debit]
    end
  end
end

