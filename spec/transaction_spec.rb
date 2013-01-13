require 'transaction'
require 'date'

describe Transaction do
  context ".new" do
    let(:move){ {description: "Desc", date: "2012/12/26"} }
    let(:transaction){ described_class.new(move) }

    it "assigns description and date" do
      transaction.description.should == move[:description]
    end

    it "assigns description and date" do
      transaction.date.should == Date.parse(move[:date])
    end
  end
end
