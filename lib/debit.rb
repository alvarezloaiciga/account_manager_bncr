class Debit
  attr_reader :ammount, :description

  def initialize(move)
    @ammount = move[:debit]
    @description = move[:description]
    @date = move[:date]
  end
end
