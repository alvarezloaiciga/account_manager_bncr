class Credit
  attr_reader :ammount, :description

  def initialize(move)
    @ammount = move[:credit]
    @description = move[:description]
    @date = move[:date]
  end
end
