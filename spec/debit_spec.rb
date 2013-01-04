require 'debit'

describe Debit do
  context ".new" do
    let(:debit){ Debit.new(debit:1234.12, description: 'This is a description') }

    it "assigns ammount" do
      debit.ammount.should == 1234.12
    end

    it "assigns description" do
      debit.description.should == 'This is a description'
    end
  end
end

