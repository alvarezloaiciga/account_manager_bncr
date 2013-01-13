class Transaction
  attr_reader :date, :description, :ammount

  def initialize(move)
    @date = Date.parse(move[:date])
    @description = move[:description]
  end
end
