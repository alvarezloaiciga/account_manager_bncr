require 'credit'
require 'csv_parser'

class AccountManager
  attr :account_data
  attr_reader :credits, :debits

  def initialize file
    @credits, @debits = [], []
    CSVParser.new(file,self)
  end

  private

  def account_summary_created summary
    summary.each do |move|
      @credits << Credit.new(move) if is_credit?(move)
      @debits << Debit.new(move) if is_debit?(move)
    end
  end

  def is_credit?(move)
    move[:credit] != 0.0
  end

  def is_debit?(move)
    move[:debit] != 0.0
  end
end
