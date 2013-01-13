require 'transaction'
class Debit < Transaction
  def initialize(move)
    @ammount = move[:debit]
    super(move)
  end
end
