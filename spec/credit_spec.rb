require 'credit'

describe Credit do
  context ".new" do
    let(:credit){ Credit.new(credit:1234.12, description: 'This is a description') }

    it "assigns ammount" do
      credit.ammount.should == 1234.12
    end

    it "assigns description" do
      credit.description.should == 'This is a description'
    end
  end
end

