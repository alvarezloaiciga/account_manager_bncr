require 'credit'
require 'date'

describe Credit do
  context ".new" do
    it "assigns ammount" do
      move = {credit:1234.12, description: 'This is a description', date: "2012/12/26" }
      credit = Credit.new(move)
      credit.ammount.should == move[:credit]
    end
  end
end

