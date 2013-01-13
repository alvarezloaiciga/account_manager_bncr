require 'account_manager'

describe AccountManager do
  let(:file){  "csvs/saldos1.csv" }

  it "creates 14 credits from csv" do
    account_manager = AccountManager.new(file)
    account_manager.credits.count.should == 14
  end

  it "creates 5 debits" do
    account_manager = AccountManager.new(file)
    account_manager.debits.count.should == 5
  end

  it "check each credit" do
    account_manager = AccountManager.new(file)
    account_manager.credits[0].description.should == "THE RACKSPACE CLOUD EDEN PRAIRIE MN"
    account_manager.credits[1].description.should == "NETFLIX.COM 866-716-0414 CA"
    account_manager.credits[2].description.should == "PAGO DE TARJETA 7308 PAGO TARJ CREDOMATIC"
  end
end
