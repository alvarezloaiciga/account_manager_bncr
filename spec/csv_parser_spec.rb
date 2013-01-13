require 'csv_parser'

describe CSVParser do
  let(:csv){ 'csvs/saldos1.csv' }
  let(:listener){ stub }

  it "calls account_summary_created on listener" do
    listener.should_receive(:account_summary_created)
    described_class.new(csv, listener)
  end
end

