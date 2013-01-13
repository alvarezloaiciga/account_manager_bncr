require 'transaction'
class Credit < Transaction
  def initialize(move)
    @ammount = move[:credit]
    super(move)
  end
end
